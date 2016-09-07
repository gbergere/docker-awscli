FROM alpine:3.4

RUN apk add --update python py-pip \
	&& pip install --upgrade pip \
	&& pip install awscli===1.10.62

ENTRYPOINT ["/usr/bin/aws"]
