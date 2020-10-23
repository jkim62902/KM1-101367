FROM jkim62902/km1-101367:ml
LABEL maintainer="JK"
LABEL repository="bert"

RUN pip3.7 install --upgrade --no-cache-dir tensorflow-gpu~=1.15 mittens


WORKDIR /worksapce
RUN git clone https://github.com/google-research/bert.git \


CMD ["/bin/bash"]
