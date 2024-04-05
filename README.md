# greet-prompter
A simple py program used to build to a docker image, demonstrating the use case of `-it` flag.

## Build the image 
Clone the repo, inside the `greet-prompter` folder, run below command to build the image.
```docker build . -t prompter```
_note that prompter is a image_name you can specify any name_
<!-- ![image](https://github.com/akatore/greet-prompter/assets/65213016/2af466b8-1ac5-4244-99ae-9d031028554b) -->
![image](https://github.com/akatore/greet-prompter/assets/65213016/f9ae821a-380c-4ef1-93f7-9cd5863f2ba5)

Check the image if it's build, you can use below command.
```docker images```
![image](https://github.com/akatore/greet-prompter/assets/65213016/54cc4a26-3e75-420e-bdf1-b38bcbec4e17)

## Run the container out of the image
```docker run prompter```
the above command will simply print the printf statement else and EOF file error.
![image](https://github.com/akatore/greet-prompter/assets/65213016/776092c9-bc18-46cf-a8e6-4ec961118f9b)

The error you're seeing is because the Docker container is running in a non-interactive mode, which means it can't accept input from the user. The `input()` function in Python is trying to read from standard input (stdin), but since there's no input available in a non-interactive Docker container, it raises an `EOFError`.

<!--
The error you're seeing is because the Docker container is running in a non-interactive mode, which means it can't accept input from the user. The `input()` function in Python is trying to read from standard input (stdin), but since there's no input available in a non-interactive Docker container, it raises an `EOFError`.

If you want to run your Python script in a Docker container and it requires user input, you need to run the Docker container in interactive mode. You can do this by adding the `-i` (interactive) and `-t` (allocate a pseudo-TTY) options to the `docker run` command:

```bash
docker run -it promptrt
```

This will allow the Docker container to accept input from the user. However, keep in mind that this is generally not how Docker containers are meant to be used. Docker containers are typically used to run services or scripts that can run without user interaction. If your script requires user input, you might want to consider redesigning it to accept command line arguments or environment variables instead. -->

To make the program work, run the docker container in interactive mode and map the docker container terminal to machine terminal.
```docker run -it propmter```
![image](https://github.com/akatore/greet-prompter/assets/65213016/9d6b0a67-8229-4e93-a3a3-81a9c2fb888f)

`-i` is option used with `docker run` command to interact with running container `-t` option is used to map the running container's terminal to the machine's terminal the docker is hosted on.

Voila!
