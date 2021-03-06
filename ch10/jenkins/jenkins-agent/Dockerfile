FROM gcr.io/kaniko-project/executor:v0.11.0 as kaniko
FROM jenkins/jnlp-slave
COPY --from=kaniko /kaniko /kaniko
WORKDIR /kaniko
USER root
