# OpenSpeedTest's page served by the maintained unprivileged nginx image.
# The base tag floats on purpose: each build picks up the current nginx and
# Alpine fixes.
FROM nginxinc/nginx-unprivileged:stable-alpine-slim

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html hosted.html License.md downloading upload /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

USER 101
EXPOSE 8080
