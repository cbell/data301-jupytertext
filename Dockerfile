FROM calpolydatascience/data301-notebook:0.7

USER jovyan
RUN pip install --upgrade pip 
RUN jupyter labextension install jupyterlab-jupytext && \
    jupyter labextension enable jupyterlab-jupytext 

