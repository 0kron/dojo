FROM osrf/ros:jazzy-desktop-full

ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
USER root

# Shell y herramientas
RUN apt update && apt install -y git wget curl \
    iputils-ping net-tools iproute2 \
    tmux vim zsh \
    && rm -rf /var/lib/apt/lists/*

# ROS2 DDS
RUN apt-get update && apt-get install -y \
        ros-jazzy-rmw-cyclonedds-cpp \
        ros-jazzy-rosidl-generator-dds-idl \
    && rm -rf /var/lib/apt/lists/*

# ROS2 DDS
RUN apt-get update && apt-get install -y \
        ros-jazzy-rmw-cyclonedds-cpp \
        ros-jazzy-rosidl-generator-dds-idl \
    && rm -rf /var/lib/apt/lists/*

# Configuración SSH
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

# Tmux Conf
COPY .tmux.conf /root/.tmux.conf

# Workspace
WORKDIR /workspace
RUN echo "source /opt/ros/jazzy/setup.zsh" >> ~/.zshrc
RUN echo "export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" >> ~/.zshrc

CMD [ "zsh" ]
