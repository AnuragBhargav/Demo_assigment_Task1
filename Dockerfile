FROM centos

RUN yum -y install python3

ADD code /code

RUN pip3 install -r /code/pip-requirements.txt

WORKDIR /code
ENV PYTHONPATH '/code'


ENTRYPOINT ["python3" , "/code/demo.py"]
