Python is not an operating system; it's a high-level programming language. It doesn't manage the file system directly. Instead, it provides libraries and functions that allow you to interact with the file system in a way that's consistent across different operating systems.

In your Dockerfile, the `FROM python:3-alpine` line is specifying the base image for your Docker container. This image includes both the Python 3 interpreter and the Alpine Linux operating system. Alpine Linux is a lightweight Linux distribution that's often used for Docker containers because of its small size.

The `WORKDIR /app` line is using a Docker command to set the working directory inside the container. This is equivalent to running `cd /app` in a Linux terminal.

The `COPY . .` line is copying files from your current directory on your host machine into the current directory inside the Docker container, which is `/app` because of the previous `WORKDIR` command.

The `EXPOSE 80` line is telling Docker that your container will be listening on port 80. This doesn't actually publish the port; it's more like documentation. You still need to use the `-p` option with `docker run` to publish the port.

The `CMD ["python", "prompter.py"]` line is specifying the default command to run when the container starts. This is equivalent to running `python prompter.py` in a Linux terminal.

So, to answer your question, it's the Docker and the underlying operating system (in this case, Alpine Linux) that are managing the file system. Python is just the language your application is written in, and it interacts with the file system through the operating system's APIs.
--------------

Using this "Copy-on-Write (COW): Docker uses a copy-on-write strategy, meaning that changes made to the file system within a running container are isolated to that container and do not affect the underlying image or other containers."



Will I be able to edit the app.py, (the file was copied to the/app container path the time we were building our custom image, it was used to host the app) will the edited app.py(inside the container) be different than the the image build ? I mean if these changes will be reflected on docker imaged that we created?

Yes, you can edit the `app.py` file within a running container, and the changes will be isolated to that specific container. However, these changes will not be reflected in the original Docker image that you used to create the container.

Here's what happens:

1. When you build your Docker image, you use a Dockerfile to specify the contents of the image, including copying the `app.py` file into the image.

2. When you run a container from this image, Docker creates a writable layer on top of the image's read-only filesystem. Any changes made to files within the container, including editing `app.py`, are stored in this writable layer.

3. These changes are isolated to the running container and do not affect the underlying image or other containers based on the same image.

So, if you edit `app.py` within a running container, those changes will only exist within that specific container. If you were to stop and remove the container, those changes would be lost. If you want to persist the changes, you would need to either rebuild the Docker image with the updated `app.py` file or use volume mounts to map a directory from your host machine into the container, allowing you to edit files on the host and have those changes reflected in the container.

------------
