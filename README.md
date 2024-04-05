# greet-prompter
A simple py program used to build to a docker image, demonstrating the use case of `-it` flag

## Build the image 
Clone the repo, inside the `greet-prompter` folder, run below command to build the image
```docker build . -t prompter```
_note that prompter is a image_name you can specify any name_

Check the image if it's build, you can use below command.
```docker images```

## Run the container out of the image
```docker run prompter```
the above command will simply print the printf statement,

To make the program work, run the docker container in interactive mode and map the docker container terminal to machine terminal 
```docker run -it propmter```

`-i` is option used with `docker run` command to interact with running container `-t` option is used to map the running container's terminal to the machine's terminal the docker is hosted on.

Voila!
