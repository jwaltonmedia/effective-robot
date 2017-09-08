# Machine Vision Experiments w. OpenCV

# Getting Started
To begin developing this OpenCV service, you must have the latest version of Docker installed on your system.  If you are using an older version of Docker, please uninstall it and use the appropriate installer from the docker website.

https://docs.docker.com/engine/installation/

Once Docker is installed on your machine, follow the steps below to begin developing your application.  This is intended for local development, and will map your project root directory into the container and auto restart the application when changes are made.

1.  Navigate to your project root directory and copy the contents of this repository to that location.
2.  Create a copy of `make_env.dist` and rename it to `make_env`.  Update with your specific information.
3.  `make build`
4.  `make shell`
5.  `python3` - will result in Python REPL
6.  At the REPL `import cv2`
7.  At the REPL `cv` - if the REPL recognizes the imported module, you're good to go.
