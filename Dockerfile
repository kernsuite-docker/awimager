FROM kernsuite/base:dev
RUN docker-apt-install lofar
RUN pip install kliko
ADD kliko.yml /
ADD kliko /
CMD /kliko
