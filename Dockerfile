FROM python:3.7-alpine 

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY . /

EXPOSE 80

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
