FROM alpine
RUN apk --no-cache add ca-certificates
ADD ./main ./main
RUN mkdir /lib64 \
    && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
ENTRYPOINT ["./main"]
CMD ["38355"]
EXPOSE 38355

