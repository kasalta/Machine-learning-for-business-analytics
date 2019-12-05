# Machine Learning for Business Analytics: A Deep Dive into Data with Python

![Powered by Jupyter Logo](https://cdn.oreillystatic.com/images/icons/powered_by_jupyter.png)

This project contains the Jupyter Notebooks and the associated Dockerfile for Walter R. Paczkowski's  _Machine Learning for Business Analytics: A Deep Dive into Data with Python_. It contains both the exercises (/notebooks), any data or files needed (/data) and slides (/slides).

The notebooks can be run [here](https://learning.oreilly.com/jupyter-notebooks/~/9781492063025).

This is a public repository so there is no need to create an account to download its contents. To download the source code from this page, click the 'Cloud' icon on the top right hand, above where the latest commit is detailed.

To download via git from your preferred terminal application, type:

```git clone https://resources.oreilly.com/binderhub/machine-learning-for-business-analytics```

## Running Jupyter Locally via Docker

We've shared the same Dockerfile we use, to make sure you can run all of these notebooks in your own time, on your own machine. This isn't required during class, but can be useful for learning once the session is over.

You will need to have Docker installed on your system to create images and run containers. You can find the installation steps for all platforms on the company's [website](https://docs.docker.com/install/)
.

1) Clone the repository for the class either using the UI or your terminal (see above)..

2) Once you have Docker installed, type the following on your terminal to create a Docker image: `docker build -t NAME .` (replace `NAME`, here and in next step, with what you want to call it. Note the period.)

3) That will take a little while to create a Docker image, but once completed, you can run your server with the following:
`docker run -p 8888:8888 NAME`

4) Head to `localhost:8888` in your browser and you will be able to access the Jupyter Notebooks.
