FROM alpine:3.13

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["tokei . | tee -a loc.txt"]

RUN apk add --no-cache --update tokei \
    dumb-init \
    git

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
