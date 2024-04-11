FROM python:3-alpine
#working dir inside the running container
WORKDIR /app 

# copies the data of application in which this Dockerfile recides to the working directory
COPY . . 

EXPOSE 80

CMD ["python", "prompter.py"]

#Python is not an operating system; it's a high-level programming language. It doesn't manage the file system directly. Instead, it provides libraries and functions that allow you to interact with the file system in a way that's consistent across different operating systems.

#In your Dockerfile, the `FROM python:3-alpine` line is specifying the base image for your Docker container. This image includes both the Python 3 interpreter and the Alpine Linux operating system. Alpine Linux is a lightweight Linux distribution that's often used for Docker containers because of its small size.

#The `WORKDIR /app` line is using a Docker command to set the working directory inside the container. This is equivalent to running `cd /app` in a Linux terminal.

#The `COPY . .` line is copying files from your current directory on your host machine into the current directory inside the Docker container, which is `/app` because of the previous `WORKDIR` command.

#The `EXPOSE 80` line is telling Docker that your container will be listening on port 80. This doesn't actually publish the port; it's more like documentation. You still need to use the `-p` option with `docker run` to publish the port.

#The `CMD ["python", "prompter.py"]` line is specifying the default command to run when the container starts. This is equivalent to running `python prompter.py` in a Linux terminal.

#So, to answer your question, it's the Docker and the underlying operating system (in this case, Alpine Linux) that are managing the file system. Python is just the language your application is written in, and it interacts with the file system through the operating system's APIs.


# Dokcerfile which make use of base image python3 (alpine) this will provide the environment for our application to run.

# WORKDIR, its a path inside the container, 
# all subsequent command, files will be executed stored after this path

# the COPY command, EXPSOE CMD are available for all the Docker containers

# Application is exposed to 80, as the application will run/listen on port 80 and that can be later mapped to some other port, I don't think for this python program we provide it to run
