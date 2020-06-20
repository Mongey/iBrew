FROM python:2.7

WORKDIR /opt/app
RUN apt-get update && apt-get install -y avahi-discover libavahi-compat-libdnssd-dev net-tools
COPY source .
RUN pip install -r requirements.txt
RUN pip install -e git+https://github.com/Eichhoernchen/pybonjour.git#egg=pybonjour

EXPOSE 2080
CMD ./ibrewui
