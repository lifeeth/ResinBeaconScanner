FROM resin/i386-debian:jessie

# Install Python.
RUN apt-get update

RUN apt-get install -y python bluetooth bluez python-bluez rfkill libbluetooth-dev \
        && apt-get clean \
        && apt-get autoremove -qqy

ADD . /app

CMD cd /app && python testblescan.py
