FROM nginx:1.25-alpine

ENV FRAME_ANCESTORS ""

COPY docker-embedded/proxy/nginx.conf /etc/nginx/nginx.conf
COPY docker-embedded/proxy/default.conf.template /etc/nginx/templates/