FROM ceciledc/fenics_mixed_dimensional:26-04-19-matplotlib

RUN pip3 install --no-cache notebook

ADD entrypoint /usr/local/bin/my-entrypoint
USER fenics
ENTRYPOINT ["/usr/local/bin/my-entrypoint"]
