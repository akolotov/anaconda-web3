To build:
```
docker build -t some_image_name .
```

To run:
```
docker run -it --rm -p 127.0.0.1:8888:8888 --name jupyter same_image_name
```

Notebooks you will create are located within the container in the `/code` directory. They will disappear as soon as you stop the container. You can use `docker cp` to copy files from the container to your drive.

Another option is to mount a directory from your local machine to the container's file system:
```
docker run -it --rm -p 127.0.0.1:8888:8888 -v /path/to/work/directory:/code --name jupyter same_image_name
```
in this case there is no need to copy anything.

As soon as the container is run, you will see an URL to access Jupyter from the browser. URL will look like this:
```
http://127.0.0.1:8888/?token=a6db...f367
```
