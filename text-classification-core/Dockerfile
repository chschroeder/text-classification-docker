FROM python:3.6.1

USER root

RUN wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -p /miniconda -b && rm miniconda.sh
ENV PATH /miniconda/bin:$PATH

RUN conda update -y conda
RUN conda install numpy \
        scipy

RUN apt-get update \ 
    && apt-get install -y --no-install-recommends \
        git \
        make \
        g++ \
        gcc

RUN git clone --recursive https://github.com/dmlc/xgboost \
    && cd xgboost \
    && make -j4 \
    && cd python-package; python setup.py install


RUN pip install pandas \
                gensim \
                nltk \
                stop-words \
                PyStemmer \
                scikit-learn \
                bayesian-optimization \
                pyxDamerauLevenshtein \
                spacy

CMD ["bash"]
