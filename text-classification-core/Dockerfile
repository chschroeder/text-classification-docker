FROM python:3.6.1

ENV CORE_USER primo 

RUN useradd -ms /bin/bash ${CORE_USER}

USER root

RUN pip install numpy \
        scipy

RUN apt-get update \ 
    && apt-get install -y --no-install-recommends \
        git \
        make \
        g++ \
        gcc \
        build-essential \
        python-dev \
        python3-dev \
        libyaml-dev

RUN git clone --recursive https://github.com/dmlc/xgboost \
    && cd xgboost \
    && make -j4 \
    && cd python-package; python setup.py install


RUN pip install setuptools==36.2.7 \
                pandas==0.20.3 \
                gensim \
                nltk \
                stop-words \
                PyStemmer \
                scikit-learn==0.18.1 \
                bayesian-optimization \
                pyxDamerauLevenshtein \
                spacy==1.7.5 \
                datasketch==1.2.0 \
                psutil==5.2.2 \
                memory_profiler==0.45 \
                ruamel.yaml==0.14.11 \
                scikit-optimize==0.3 \
                pyemd==0.4.2 \
                sacred==0.7.0 \
                lightgbm==2.0.3


RUN chmod -R 777 /usr/local/lib/python3.6/site-packages
RUN chmod -R 777 /usr/local/lib/python3.6/site-packages/spacy

CMD ["bash"]
