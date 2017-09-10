ARG VERSION=latest
FROM chschroeder/text-classification-core:${VERSION}

RUN echo $VERSION

USER root

RUN apt-get install -y --no-install-recommends python-matplotlib

RUN pip install seaborn 

CMD ["bash"]
