FROM text-classification-plotting:0.3.1

USER root

RUN apt-get install -y --no-install-recommends python-matplotlib

RUN pip install notebook

USER primo

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0"]
