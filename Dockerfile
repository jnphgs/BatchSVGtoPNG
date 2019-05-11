FROM python:latest

WORKDIR /var/python

RUN pip install \
        ipython \
        cairosvg

CMD ["ipython"]