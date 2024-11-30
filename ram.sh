#!/bin/bash

packages=("htop" "wget" "curl" "python3" "python3-pip")

echo "Get the linux distribution id"
distro=$(cat /etc/os-release | grep ID | head -1 | cut -d "=" -f2)
echo "$distro" 

echo "Install the packages"

for package in ${packages[@]}; do

  if [[ "${distro}" == "fedora" ]]; then
    echo "Fedora distribution identified. Installing package ${package}."
    yum install -y ${package}

  elif [[ "${distro}"  == "debian" ]]
   echo "Debian distribution identified. Installing package ${package}."
   apt install -y ${package}

  fi
done

echo "Completed package instalations"
