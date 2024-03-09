FROM ros:galactic


WORKDIR /workdir

COPY . .

RUN colcon build

ENTRYPOINT [ "/ros_entrypoint.sh" ]
