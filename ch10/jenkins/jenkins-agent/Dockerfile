FROM gcr.io/kaniko-project/executor:v0.11.0 as kaniko
FROM jenkins/jnlp-slave
COPY --from=kaniko /kaniko /kaniko
ENV PATH=/busybox:$PATH
VOLUME /busybox
WORKDIR /kaniko
