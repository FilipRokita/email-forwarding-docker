# Email Forwarding in Docker
Forward emails from contact@yourdomain.com to you@gmail.com using **Postfix**!

## Docker Compose (preferred)

```bash
docker build -t postfix .
docker compose up -d
```

## Manually

```bash
docker run -it -p 25:25 --name email-forwarding --restart=unless-stopped ubuntu bash

apt update
apt install postfix

service postfix start

echo virtual_alias_domains = (DOMAIN) >> /etc/postfix/main.cf
echo virtual_alias_maps = hash:/etc/postfix/virtual >> /etc/postfix/main.cf

echo (FORWARD FROM) (FORWARD TO) > /etc/postfix/virtual

postmap /etc/postfix/virtual
service postfix restart

[CTRL] + [P], then, [CTRL] + [Q]
```
