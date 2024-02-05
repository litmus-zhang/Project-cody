### Docker Installation - Ubuntu 22.04 - Jammy J
update your existing list of packages:<br/>
```
sudo apt update
```
install a few prerequisite packages which let apt use packages over HTTPS:<br/>
```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```
add the GPG key for the official Docker repository to your system:<br/>
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
Add the Docker repository to APT sources:<br/>
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
update your existing list of packages (again):<br/>
```
sudo apt update
```
Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:<br/>
```
apt-cache policy docker-ce
```
install Docker:<br/>
```
sudo apt install docker-ce
```
Check that docker running:<br/>
```
sudo systemctl status docker
```
### OPTIONAL - Executing the Docker Command Without Sudo 
If you want to avoid typing 'sudo' whenever you run the 'docker' command, add your username to the 'docker' group:<br/>
```
sudo usermod -aG docker ${USER}
```
To apply the new group membership, log out of the server and back in, or type the following:<br/>
```
su - ${USER}
```
Confirm that your user is now added to the docker group by typing. NOTE: 'docker' must be listed among the output, if done properly:<br/>
```
groups
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
