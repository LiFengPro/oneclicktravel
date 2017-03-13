FROM python:3.6
RUN mkdir /src
ADD requirements.txt /src
RUN pip install -r /src/requirements.txt
ADD configs/wait_for_it.sh /usr/local/bin/
ADD docker-entrypoint.sh /usr/local/bin/
WORKDIR /src
VOLUME /src
ENTRYPOINT ["sh", "docker-entrypoint.sh"]
