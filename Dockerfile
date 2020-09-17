FROM centos

RUN yum -y install python3

ADD code /$WORKSPACE

RUN pip3 install -r /code/pip-requirements.txt

WORKDIR /code
ENV PYTHONPATH '$WORKSPACE'


ENTRYPOINT ["python3" , "$WORKSPACE/demo.py"]
