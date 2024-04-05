FROM python:3-alpine

WORKDIR /app #working dir inside the running container

COPY . . # copies the data of application in which this Dockerfile recides to the working directory

EXPOSE 80

CMD ["python", "prompter.py"]


# Dokcerfile which make use of base image python3 (alpine) this will provide the environment for our application to run.

# WORKDIR, its a path inside the container, 
# all subsequent command, files will be executed stored after this path

# the COPY command, EXPSOE CMD are available for all the Docker containers

# Application is exposed to 80, as the application will run/listen on port 80 and that can be later mapped to some other port, I don't think for this python program we provide it to run
