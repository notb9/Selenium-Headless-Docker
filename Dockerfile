FROM debian:bullseye-slim
WORKDIR /app

RUN apt --assume-yes update
RUN apt --assume-yes install python3 python3-pip python3-setuptools
RUN apt --assume-yes install chromium chromium-driver

# Copy source files over
COPY ./src/ /app/src/

# Install your python package (make sure to specify selenium as a dependency)
RUN pip install .

# Invoke your script
# ENTRYPOINT ["/usr/bin/python3", "/app/main.py"]
