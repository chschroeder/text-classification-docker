FROM python:3.6.1

USER root

RUN pip install numpy \
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


RUN pip install pandas==0.19.2 \
                gensim \
                nltk \
                stop-words \
                PyStemmer \
                scikit-learn \
                bayesian-optimization \
                pyxDamerauLevenshtein \
                spacy==1.7.5 \
                datasketch==1.2.0 \
                psutil==5.2.2 \
                memory_profiler==0.45

RUN pip install scikit-optimize==0.3

CMD ["bash"]
