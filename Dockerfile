FROM ceciledc/fenics_mixed_dimensional:26-04-19-matplotlib

RUN pip3 install --upgrade setuptools pip
RUN pip3 install --no-cache --upgrade notebook

COPY entrypoint /usr/local/bin/my-entrypoint
ENTRYPOINT ["/usr/local/bin/my-entrypoint"]

# create user with a home directory
ARG NB_UID

RUN usermod -u ${NB_UID} fenics

USER ${NB_UID}

COPY --chown=${NB_UID} . ${HOME}/
