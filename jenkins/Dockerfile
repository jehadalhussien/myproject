FROM jenkins/jenkins:lts

USER root

# تحديث الحزمة وتثبيت curl و git و الأدوات المطلوبة
RUN apt-get update && apt-get install -y curl git apt-transport-https ca-certificates software-properties-common

# تثبيت Node.js 18.x مع npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# تثبيت Docker CLI فقط (بدون daemon)
RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-24.0.2.tgz | tar -xz -C /usr/local/bin --strip-components=1 docker/docker

USER jenkins
