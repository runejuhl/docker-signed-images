FROM centos:7

ARG FINAL_INTERMEDIATE_IMAGE_SIGNATURE_HASH

ADD Dockerfile /Dockerfile
LABEL name='test-signed'
LABEL maintainer='Rune Juhl Jacobsen <runejuhl@enableit.dk>'

ADD 0ACCEE0203A154E7.pub /.well-known/keys/

RUN touch /testing

RUN docker ps
