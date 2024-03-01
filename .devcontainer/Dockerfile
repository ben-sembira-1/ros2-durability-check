# Note: You can use any Debian/Ubuntu based image you want. 
FROM ros:galactic-ros-base

RUN adduser --home /home/user --shell /bin/bash user
USER user

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>