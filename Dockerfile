FROM python:3.10.9

COPY . mhcnuggets

WORKDIR /mhcnuggets

RUN python3 setup.py sdist bdist_wheel

RUN pip install dist/mhcnuggets-2.4.0.tar.gz

ENTRYPOINT [ "./docker-entrypoint.sh" ]
