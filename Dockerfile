FROM alpine:3.20

RUN apk add --no-cache bash busybox-suid

WORKDIR /app

COPY crontab/crontab_prod /etc/crontabs/root

CMD ["sh", "-c", "echo '===== CRONTAB =====' && cat /etc/crontabs/root && echo '===================' && crond -f -l 2"]
