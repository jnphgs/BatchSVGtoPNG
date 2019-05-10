FROM python:latest

WORKDIR /var/python

RUN pip install \
        ipython \
        numpy \
        matplotlib \
        scipy \
        pillow \
        cairosvg

CMD ["ipython"]