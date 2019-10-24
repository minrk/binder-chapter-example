FROM ceciledc/fenics_mixed_dimensional:30-11-18

RUN pip3 install --no-cache notebook

ADD entrypoint /usr/local/bin/my-entrypoint
USER fenics
ENTRYPOINT ["/usr/local/bin/my-entrypoint"]
