FROM debian:oldoldstable-20231218

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    libconfig-inifiles-perl libconvert-color-perl libfile-find-rule-perl libfile-homedir-perl libpar-packer-perl perl-tk

# Cleanup
RUN apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt /var/lib/cache /var/lib/log

WORKDIR /mnt

CMD [ "pp", "-o", "waza_lightfixes.linux.x86_64", "waza_lightfixes.pl" ]
