# ROS 2

## Workspace 
> Basically a directory used as starting point to the application, with a `src/`
subdirectory. 

You can build a workspace by: 
```bash
build colcon
```
Inside the directory, which will create the ROS specific directories and 
installations. 

It is possible to source the entire workspace by: 
```bash
source ./install/setup.$SHELL
```
> After building it is mandatory to source.


It is also possible to build specific packages inside the workspace: 
```bash
colcon build --packages-select <package name>
```

## ROS 2 Packages 

Independent units of your application. Responsible each of a different flow. 
And clearly, it is dependent on which language you choose. 

To create a package, you must be inside the `workspace`'s `src/` directory and
run: 
```bash
ros2 pkg create <pkg_name> --build-type ament_<language (python, cmake)>
--dependencies <list of dependencies separeted with spaces>
```

Generally we want to give `rclpy` as a dependency when working with Python. And
`rclcpp` when working with C++.

- **Default structure of a Python Package**: 
```text
.
├── my_py_pkg               // home of our python nodes
│   └── __init__.py
├── package.xml             // standard ros2, information and dependencies
├── resource
│   └── my_py_pkg
├── setup.cfg
├── setup.py                // instructions to build and install the nodes
└── test
    ├── test_copyright.py
    ├── test_flake8.py
    └── test_pep257.py
```

- **Default structure of a C++ Package**: 
```text
.
├── CMakeLists.txt          // compilation instructions.
├── include                 // home of headers
│   └── my_cpp_pkg
├── package.xml             // information and dependencies
└── src                     // cpp files
```

## ROS 2 Nodes
Every node in ROS uses OOP. Meaning, there is already a stucture and parent of
the Node type in either Python or C++. 


### Python 
Inside the workspace, inside the package directory, inside the homonimous 
directory is the place of creation of new nodes. For example: 
```bash
cd ./ros_ws/src/my_py_pkg/my_py_pkg/ 
touch first_node.py
chmod +x first_node.py
```

For example: 
```python
#!/usr/bin/env python3
import rclpy                              ## Python ROS2 Lib
from rclpy.node import Node               ## Base node object

class MyCustomNode(Node):                 ## New node with parent Node
    def __init__(self): 
        super().__init__('my_node_name')  ## super() calls the parent and
                                          ## adds the node name
        self.get_logger().info("Hello World") ## Prints on startup
    
def main(args=None):
    rclpy.init(args=args)                 ## Initilize communication with ROS 2
    node = MyCustomNode()                 ## Creation of a new node
    rclpy.spin(node)                      ## spin() blocks the execution 
    rclpy.shutdown()                      ## end communication with ROS 2

if __name__ == '__main__':
    main()
```

### Building a Python node
After you correctly tested the new node, you have to add it to the `setup.py` 
created in the package. Specifically on the `entry_points`. 
```python
    entry_points={
        'console_scripts': [
            "<executable_name> = <package_name>.<file_name>:<function_name>",
        ],
    },
```


### Timer inside Node

Node as a parent object has a builtin function called `create_timer()`, which
as its name states, generates an internal timer with an specified rate 
and a function to call on each iteration. For example: 
```python
    self.create_timer(1.0, self.print_hello)
```
This creates a timer inside the node that executes the function `print_hello()`,
every second. Notice that the rate is given as a `float`.

> As Python does not support access levels to the variables, it is common
practice to use a suffix '_' to denote every class atribute.

Every iteration of the timer will be executed as long as the node is set to
`spin` with the ROS 2 communication inside `main`. 


### Python node template: 
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

class MyCustomNode(Node): # MODIFY
    def __init__(self):
        super().__init__('node_name') # MODIFY

def main(args=None):
    rclpy.init(args=args)
    node = MyCustomNode() # MODIFY
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == '__main__':
    main()
```


## Introspecting Nodes 

> Para el correcto funcionamiento de la introspección de nodos desde un 
contenedor de docker, se debe agregar a los peers de ros el localhost: 
> `export ROS_STATIC_PEERS=127.0.0.1`

It is possible to list all the current active nodes inside our ROS 2 framework:
```bash 
ros2 node list
```

And see details of an specific node by: 
```bash 
ros2 node info <node_name>
```

---

## Topics
### Publishers

In ROS 2, you do not create a topic, you create a publisher to a topic, and that
creates the topic. Therefore, there are two cases: 

1. The node publishes to an already existing topic, using its name and interface.
2. The node publishes to a new topic, choosing a name and interface.

If it's the latter, the following line must be inside the node's constructor: 
```python
   self.number_publisher = self.create_publisher(Int64, "number", 10)
```
Where the parameters are respectively: **Interface**, **topic name**, **queue 
size**. The last one means how many data is going to be saved in the buffer for
the suscribers to not loose information. Recomended 10 spaces on the buffer.

As you create a publisher, that object has its parent's function `.publish`. 
That recives a message with the same interface as the publisher and publishes it.

Example: 
```python
    def publish_number(self):
        msg = Int64()
        msg.data = self.number_
        self.number_publisher_.publish(msg)
        self.number_ += 1
```

Where `self.number_publisher_` was created with the `self.create_publisher`
method.

As we are using `Int64` that is part of the `example_interfaces` we use it as a
dependency on both python: 
```python
from example_interfaces.msg import Int64
```

And in our `package.xml` file: 
```xml
  <depend>rclpy</depend>
  <depend>example_interfaces</depend>
```

### Introspecting topics 

First to see all topics available we have the next command: 
```bash
ros2 topic list
```

To inspect a topics interface, publisher count and suscription count: 
```bash
ros2 topic info <topic_name>
```

And to see its content in real time: 
```bash
ros2 topic echo <topic_name>
```

GUI Graph of interactions inside Ros 2 (may require reloads): 
```bash 
rqt_graph
```

> As soon as the topic does not have any publishes it ceases to exist.

### Subscribers

The process of creating a subscriber, is almost identical to that of the 
publisher. It is mandatory to also include the interface as a dependency, and 
the creation of a subscription is as follows: 
```python
  self.number_subscriber = self.create_subscription(
       Int64,
       "number",
       self.callback_number,
       10
  )
```

With the parameters: **interface**, **topic name**, **callback function** and 
**queue size**. 

The callback is a function that will automatically be executed as soon as a new
data is placed inside the topic attached to the suscription. And we must 
implement it: 
```python 
def callback_number(self, msg: Int64):
    self.counter_ += 1
    self.sum_ += msg.data
    self.get_logger().info("Counter: "+str(self.counter_)
                           + "\nSum: "+str(self.sum_))
```


## Interfaces 

Common interfaces: [https://github.com/ros2/common_interfaces](https://github.com/ros2/common_interfaces). 

To install new interfaces: 
```bash 
sudo apt install ros-$ROS_DISTRO-<package-name>
```

For example:
```bash 
sudo apt install ros-jazzy-sensor-msgs
```
To have access to the `Image.msg` interface so as to have camera output.

### Creating Interfaces

First create a new package with the `cmake` type build, which is the build by 
default: 
```bash 
cd ros_ws/src/
ros2 pkg create <name>_interfaces
cd <name>_interfaces 
rm -r src include 
mkdir msg
```

And edit the `xml` file to have the following lines after the `ament_cmake`: 
```xml
  <buildtool_depend>ament_cmake</buildtool_depend>
  <build_depend>rosidl_default_generators</build_depend>
  <exec_depend>rosidl_default_runtime</exec_depend>
  <member_of_group>rosidl_interface_packages</member_of_group>
```

And edit the `cmake` file to have the following lines between `find_package()`
and `if(BUILD_TESTING)`: 
```cmake 
find_package(rosidl_default_generators REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
        # we will add the name of our costom interfaces here with no separation
        # comma between the names. 
        # msg/<interface-name>.msg
)
ament_export_dependencies(rosidl_default_runtime)
```

- **Rules of naming interfaces**: 
    - UpperCammelCase
    - No "Msg" nor "Interface"
    - Extension must be: `.msg`

Creating a new interface then is as simple as: 
```bash 
cd msg 
touch <new-interface>.msg
```

It is possible to use `builtin` types as `bool`, `byte`, `int64`, `float64` and
`string`. As well as other message types, for example `goemetry_msgs/Twist`. 

Complete list of interfaces: [Here](https://docs.ros.org/en/rolling/ROS-Framework/interfaces/About-Interfaces.html#field-types)

Example inside `HardwareStatus.msg`: 
```msg
int64 version
float64 temperature
bool are_motors_ready
string debug_message
```

Finally, you only have to `colcon build` the interface package and source the
workspace.

> To use this interfaces in the code will be as with any other interface: 
Adding the <package-name> to the `.xml` file, and import it in Python as: 
`from <package-name>.msg import <interface-name>`.

Every different data point in the interface may be accessible as an object 
attribute. For example `HardwareStatus.temperature`.


## Services

### Service Interface

The process of creating a new service interface is identical to that of a topic
interface, with the only difference that there are two overarching fields: 
```srv
<type> name       ### Message
<tipe> name 
---
<type> name       ### Response
```

### Server creation
Just as with the subscribers, the first thing in the node is to properly import
the interface, and then use the function: 
```python
    self.create_service(<Interface>, <server_name>, <callback function>)
```

