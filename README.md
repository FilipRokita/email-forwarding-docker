# email-forwarding-docker


## Automatically
**IT'S CURRENTLY NOT WORKING**

```bash
docker build -t postfix .
docker compose up -d
```

## Manually
**It worked, but I have no idea why it's not working now**

```bash
docker run -it -p 25:25 --name email-forwarding --restart=unless-stopped ubuntu bash

apt update
apt install postfix

postfix start

echo virtual_alias_domains = (DOMAIN NAME) >> /etc/postfix/main.cf
echo virtual_alias_maps = hash:/etc/postfix/virtual >> /etc/postfix/main.cf

echo (FORWARD FROM) FORWARD TO > /etc/postfix/virtual

postmap /etc/postfix/virtual
postfix reload

[CTRL] + [P], then, [CTRL] + [Q]
```