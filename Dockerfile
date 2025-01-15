LABEL org.opencontainers.image.source="https://github.com/68656c6c/caddy-cloudflare"
FROM caddy:builder AS builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare
FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
