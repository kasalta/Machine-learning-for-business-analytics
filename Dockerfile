FROM jupyter/datascience-notebook:2ce7c06a61a1

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

# Allow user to write to directory
RUN chown -R $NB_USER /home/jovyan \
    && chmod -R 774 /home/jovyan \
    && rmdir /home/jovyan/work
USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True --NotebookApp.iopub_data_rate_limit=1.0e10
