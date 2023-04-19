FROM python:3.10-slim-buster

EXPOSE 5001

# Install dependencies
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        gcc \
      	git \
        make \
        python3-pip \
        libopenblas-dev \
        software-properties-common
# Move to /app
WORKDIR /app/

# Install koboldcpp
RUN git clone https://github.com/LostRuins/koboldcpp .
RUN pip install -r requirements.txt
RUN make LLAMA_OPENBLAS=1

COPY run-koboldcpp.sh /app/
RUN chmod +x /app/run-koboldcpp.sh

ENTRYPOINT ["/app/run-koboldcpp.sh"]

