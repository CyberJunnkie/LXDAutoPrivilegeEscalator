#!/bin/sh


# Cloning container repo
git clone  "https://github.com/saghul/lxd-alpine-builder"
# changing directory
cd lxd-alpine-builder
# fixing some issues with the repo
sed -i 's,yaml_path="latest-stable/releases/$apk_arch/latest-releases.yaml",yaml_path="v3.8/releases/$apk_arch/latest-releases.yaml",' build-alpine
# building the container image
sudo ./build-alpine -a i686
