@echo off
docker compose --profile backend --profile app --profile admin up -d
docker cp packages/hoppscotch-sh-admin/sh-admin-multiport-setup.Caddyfile hoppscotch-sh-admin:/etc/caddy/sh-admin-multiport-setup.Caddyfile
docker cp packages/hoppscotch-selfhost-web/selfhost-web.Caddyfile hoppscotch-app:/etc/caddy/selfhost-web.Caddyfile
docker restart hoppscotch-sh-admin hoppscotch-app
