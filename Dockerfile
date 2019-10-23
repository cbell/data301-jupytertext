FROM jupyter/tensorflow-notebook:1386e2046833 
USER root
RUN apt-get update && \
    apt-get -y install build-essential swig

USER jovyan
RUN pip install --upgrade pip 
RUN jupyter labextension install jupyterlab-jupytext && \
    jupyter labextension enable jupyterlab-jupytext 
RUN pip install jupytext --upgrade && \
    pip install auto-sklearn
