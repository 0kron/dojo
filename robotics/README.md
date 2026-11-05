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
ros2 pkg create <pkg_name> --build_type ament_<language (python, cmake)>
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

