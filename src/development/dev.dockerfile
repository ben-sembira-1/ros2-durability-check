FROM ros:humble

RUN adduser --home /home/user --shell /bin/bash user
USER user

WORKDIR /workdir

ENTRYPOINT [ "/ros_entrypoint.sh" ]

# RUN apt update && \
#     apt install locales && \
#     locale-gen en_US en_US.UTF-8 && \
#     update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 && \
#     export LANG=en_US.UTF-8

# RUN apt install software-properties-common && \
#     add-apt-repository universe

# RUN apt update && \
#     apt install curl && \
#     curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# RUN adduser --home /home/user --shell /bin/bash user
# USER user

# RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# USER root

# RUN apt update && \
#     apt upgrade && \
#     apt install ros-galactic-ros-base ros-dev-tools

# ENTRYPOINT [ "/opt/ros/galactic/setup.bash" ]
# CMD [ "bash" ]