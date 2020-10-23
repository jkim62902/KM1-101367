FROM jkim62902/km1-101367:ml
LABEL maintainer="JK"
LABEL repository="electra"

RUN pip3.7 install --upgrade --no-cache-dir tensorflow-gpu~=1.15


WORKDIR /worksapce
RUN git clone https://github.com/google-research/electra.git 


CMD ["/bin/bash"]
