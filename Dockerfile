FROM jupyter/tensorflow-notebook:1386e2046833 
USER root
RUN apt-get update && \
    apt-get -y install build-essential swig

USER jovyan
RUN pip install --upgrade pip 
RUN jupyter labextension install jupyterlab-jupytext && \
    jupyter labextension enable jupyterlab-jupytext 
RUN conda install --quiet --yes \
    'basemap' \
    'blaze' \
    'odo' \
    'altair'\
    'vega_datasets' \
    'vega3' \
    'pymc3' \
    'brewer2mpl' \
    'lxml' \
    'plotly' \
    'scikit-image' && \
    pip install ipythonblocks && \
    pip install vdom 
RUN pip install auto-sklearn && \
    pip install jupytext --upgrade 
