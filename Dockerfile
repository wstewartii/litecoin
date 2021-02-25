FROM centos:latest
ENV VERSION=0.18.1
ENV ARCH=x86_64
RUN yum -y update \
    && useradd -m litecoin
COPY litecoin.pub.asc /tmp/
RUN cd /opt/ \
    && curl https://download.litecoin.org/litecoin-${VERSION}/linux/litecoin-${VERSION}-${ARCH}-linux-gnu.tar.gz > litecoin-${VERSION}-${ARCH}-linux-gnu.tar.gz \
    && curl https://download.litecoin.org/litecoin-${VERSION}/linux/litecoin-${VERSION}-linux-signatures.asc > litecoin-${VERSION}-linux-signatures.asc \
# import litecoin public gpg key
    && gpg --import /tmp/litecoin.pub.asc \
# bail if the signatures file can't be verified
    && gpg --verify litecoin-${VERSION}-linux-signatures.asc \
# bail if the checksum found doesn't match the signatures file
    && grep $(sha256sum litecoin-${VERSION}-${ARCH}-linux-gnu.tar.gz | cut -d ' ' -f 1) litecoin-${VERSION}-linux-signatures.asc \
    && tar -xvzf litecoin-${VERSION}-${ARCH}-linux-gnu.tar.gz \
    && chown -R litecoin /opt/litecoin-0.18.1
USER litecoin
ENTRYPOINT ["/opt/litecoin-0.18.1/bin/litecoind"]
