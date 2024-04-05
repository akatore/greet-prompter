
When running a containerized web application, it operates within a Docker container, which is assigned an internal IP address by default within the Docker network. By default, Docker containers are isolated within their own network, making them accessible only within the internal network unless specifically configured otherwise.

To access an application running within a Docker container, one typically needs to know the internal IP address of the container along with the port on which the application is listening. For example, if the application is listening on port 5000, you would access it using the container's internal IP address followed by port 5000.

However, if the port the application is using is already occupied on the Docker host or conflicts with another container, it can be remapped at runtime using the `-p` flag when running the container. For instance:

```
docker run -p 8000:5000 image_name
```

In this command, the application running inside the container on port 5000 is mapped to port 8000 on the Docker host. This allows incoming traffic on port 8000 of the Docker host to be forwarded to port 5000 inside the container.

This port mapping enables running multiple instances of the same application or different applications on the same Docker host, each mapped to a different port to avoid conflicts. By specifying different host ports for each container, multiple containers can coexist on the same host without interference.

And of course, you cannot map to the same port on the dock or host more than once.

Though we can host multiple apps within a single container, only to avoid the potential conflicts between the application that may occur, we follow "one application per container" , this approach promotes modularity, isolation, scalability, and easier management of applications. Each container encapsulates a single application along with its dependencies, ensuring that the application has everything it needs to run consistently regardless of the environment.

