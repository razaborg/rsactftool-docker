FROM frolvlad/alpine-gcc
RUN apk update 
RUN apk add python python-dev py2-crypto py2-pip gmp  gmp-dev git
RUN git clone https://github.com/hellman/libnum.git
WORKDIR /libnum
RUN python setup.py install
WORKDIR /
RUN git clone https://github.com/Ganapati/RsaCtfTool.git
WORKDIR /RsaCtfTool
RUN pip install -r "requirements.txt"
ENTRYPOINT ["./RsaCtfTool.py"]
