FROM nginx:1.28-alpine
COPY --chown=nginx:nginx . /usr/share/nginx/html
RUN chown -R nginx:nginx /var/cache/nginx /var/log/nginx /etc/nginx \
    && touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid
USER nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
