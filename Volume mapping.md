## How data is persisted in a Docker container.
When running a MySQL container, data is stored inside the container's isolated file system. 
If the container is deleted, all data is lost. 
To persist data, you should map a directory outside the container.

To persist data, you can create a directory on the host and map it to a directory inside the container using the `-v` option. For example:

```
docker run -v /host/directory:/container/directory image_name
```

This command will mount the `/host/directory` on the Docker host to `/container/directory` inside the container.

By mapping a host directory to a directory inside the container, data will be stored externally and persist even if the Docker container is deleted.

To get additional details about a specific container, you can use the `docker inspect` command followed by the container name or ID. This command returns all container details in JSON format, including state, mounts configuration, network settings, etc. Here's an example:

```
docker inspect container_name_or_id
```

To view logs of a container running in the background, you can use the `docker logs` command followed by the container ID or name. This command displays the contents written to the standard output of that container. For example:

```
docker logs container_name_or_id
```

These commands provide valuable insights into container details and facilitate troubleshooting and monitoring tasks.
