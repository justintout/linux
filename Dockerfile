FROM eeems/remarkable-toolchain:latest

COPY ./compile_pogo.sh /compile_pogo.sh
RUN chmod u+x /compile_pogo.sh

ENTRYPOINT ["/compile_pogo.sh"]
