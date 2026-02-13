#!/bin/bach

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

# run "sdk list java" and Pick a Java 21 distribution (for example Temurin):

sdk install java 21.0.2-tem

sdk default java 21.0.2-tem
