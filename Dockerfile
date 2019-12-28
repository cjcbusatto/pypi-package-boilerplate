FROM python:3.7

COPY . .

RUN python3 -m pip install --user --upgrade setuptools wheel
RUN python3 setup.py install

CMD [ "example-package-docker" ]