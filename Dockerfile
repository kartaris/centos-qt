FROM centos:8

MAINTAINER "kartaris" <rust768@gmail.com>

# Installing base packages
RUN dnf -y install dnf-plugins-core
RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN dnf config-manager --set-enabled PowerTools

# Installing qt packages
RUN dnf -y install qt5-qtbase qt5-qtbase-devel qt5-qttools qt5-qttools-devel qt5-qttools-static qt5-qtbase-private-devel qt5-qtdeclarative qt5-qtdeclarative-devel

RUN dnf clean all

