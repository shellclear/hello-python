FROM quay.io/shellclear/ubi8:8.5-214

LABEL maintainer="Paulo Pacifico <ppacific@redhat.com>"

ENV BUILDER_VERSION 1.0

LABEL Component="Python" \
      Name="s2i-python" \
      Version="3.9" 

LABEL io.k8s.description="A basic Python hello-world app based on S2I building image" \
      io.k8s.display-name="s2i-python-39" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="s2i-python:39" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i"

RUN   yum install -y --nodocs --disableplugin=subscription-manager python39 && \
      yum clean all --disableplugin=subscription-manager -y 

COPY ./s2i/bin/ /usr/libexec/s2i

ENV VIRTUAL_ENV="/usr/local/python" 

RUN python3 -m venv ${VIRTUAL_ENV} && \
    chown -R 1001:0 $VIRTUAL_ENV && \
    chgrp -R 0 $VIRTUAL_ENV && \
    chmod -R g=u $VIRTUAL_ENV && \
    chmod +x /usr/libexec/s2i/assemble /usr/libexec/s2i/run /usr/libexec/s2i/usage

USER 1001

EXPOSE 8080

WORKDIR $VIRTUAL_ENV

CMD ["/usr/libexec/s2i/usage"]
