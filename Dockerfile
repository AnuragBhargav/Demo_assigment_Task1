FROM centos

RUN yum -y install python3

ADD code /code



WORKDIR /code
ENV PYTHONPATH '/code'


ENTRYPOINT ["python3" , "/code/demo.py"]
