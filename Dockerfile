FROM chenaoki/docker_std:latest

MAINTAINER chenaoki <chenaoki@gmail.com>

USER root

ENV NOTEBOOK_HOME /notebook

RUN echo "c.NotebookApp.notebook_dir = '$NOTEBOOK_HOME'" >> /root/.jupyter/jupyter_notebook_config.py

#RUN mkdir -p $NOTEBOOK_HOME
RUN ln -s $NOTEBOOK_HOME /mnt/notebook
WORKDIR $NOTEBOOK_HOME
RUN conda install pymc

CMD ["sh", "-c", "jupyter notebook > $NOTEBOOK_HOME/log.txt 2>&1"]

