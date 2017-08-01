FROM text-classification-plotting:0.3.2

USER root

RUN apt-get install -y --no-install-recommends python-matplotlib

RUN pip install notebook==5.0.0

USER primo

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0"]
