FROM node:5

ENV NPM_CONFIG_LOGLEVEL=warn \
  NPM_CONFIG_PROGRESS=false \
  NPM_CONFIG_SPIN=false

# Run updates
RUN \
  echo -e "\nRunning apt-get update..." && \
  apt-get update

# Base packages
RUN \
  echo -e "\nInstalling base packages..." && \
  apt-get install -y git sudo software-properties-common python-software-properties libx11-xcb1

# Install A11y Machine Globally
RUN npm install -g the-a11y-machine

# Install rsync
RUN \
  echo -e "\nInstalling rsync..." && \
  apt-get -y install rsync