FROM alpine

ENV checksum='dd5b347105df354edca8a77679bdf63e848de39cebcb8c1be3c2a38db16d1e8aee0e4ee84c1164333d15fa62b4491e4190f74efdff3d4f043a38d5e0c0eb3663'
RUN wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.4.1/caddy_2.4.1_linux_amd64.tar.gz"; \
	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; \
	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; \
	rm -f /tmp/caddy.tar.gz; \
	chmod +x /usr/bin/caddy; \
	caddy version
ENTRYPOINT ["caddy"]