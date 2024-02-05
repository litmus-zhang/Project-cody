### Docker Installation - Ubuntu 22.04 - Jammy J
update your existing list of packages:<br/>
```
sudo apt update
```
update your existing list of packages:<br/>
```
sudo apt update
```

### PRE-Run 
Ensure Connected Display to environment:<br/>
```
export DISPLAY=:1.0
```
Device parameter which will prevents any errors when you launch GUI apps from inside the container.:<br/>
```
xhost +local:docker
```

### Run using docker
To build the docker image:<br/>
```
docker pull osrf/ros:humble-desktop
```
To run the docker container:<br/>
```
docker run -it --net=host --device /dev/dri/ -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority:ro osrf/ros:humble-desktop
```
ros2 command line help:<br/>
```
ros2 --help
```
Know lsb release:<br/>
```
lsb_release -a
```
Show ROS Distribution:<br/>
```
echo $ROS_DISTRO
```
list all installed packages:<br/>
```
ros2 pkg list
```
list all executables:<br/>
```
ros2 pkg executables
```
Run a minimal example of 2 C++ nodes (1 topic subscriber 'listener', 1 topic publisher 'talker') from the package 'demo_nodes_cpp' in this container. After trying, End with 'Ctrl+C':<br/>
```
ros2 run demo_nodes_cpp listener &
ros2 run demo_nodes_cpp talker
```
Checking Turtlesim:<br/>
```
ros2 pkg executables turtlesim
```
Starting Turtlesim:<br/>
```
ros2 run turtlesim turtlesim_node
```
Use Turtlesim:<br/>
```
ros2 run turtlesim turtle_teleop_key
```
Test out your GUI apps like rqt or test the new gazebo app[https://gazebosim.org/docs/fortress/install_ubuntu]:<br/>
```
ign gazebo empty.sdf
```
Optional:<br/>
If you want to work with jupyter notebook and develop:<br/>
```

```
