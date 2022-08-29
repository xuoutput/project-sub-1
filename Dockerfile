FROM nginx:1.23.1
WORKDIR /web
RUN mkdir -p www \
    && rm -rf /etc/nginx/conf.d/default.conf
COPY dist www
COPY nginx.conf /etc/nginx/conf.d/