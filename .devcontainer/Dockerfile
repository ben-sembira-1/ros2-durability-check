FROM ros:humble
ARG USERNAME=USERNAME
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    wget \
    less \
    openssh-client \
    git \
    bash-completion \
    build-essential \
    sudo \
    python3-pip \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME

ENV SHELL /bin/bash
RUN echo "source /ros_entrypoint.sh && set +e" >> ~/.profile
ENV PATH="${PATH}:~/.local/bin"
RUN pip install pre-commit

CMD ["/bin/bash"]
