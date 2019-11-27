FROM jupyter/datascience-notebook:abdb27a6dfbb

#Set the working directory
WORKDIR /home/jovyan/

# Modules
USER root
COPY requirements.txt /home/jovyan/requirements.txt
RUN apt-get update && apt-get -y install graphviz \
    && pip install -r /home/jovyan/requirements.txt

# Add files
COPY notebooks/ /home/jovyan/notebooks
COPY data/ /home/jovyan/data
COPY solutions/ /home/jovyan/solutions
COPY slides/ /home/jovyan/slides
COPY postBuild /home/jovyan/postBuild

# Allow user to write to directory, delete /work, run custom postBuild
USER root
RUN chown -R $NB_USER /home/jovyan && \
    chmod -R 777 /home/jovyan && \
    rm -fR /home/jovyan/work && \
    /home/jovyan/postBuild
USER jovyan

# Expose the notebook port
EXPOSE 8888
