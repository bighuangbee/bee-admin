FROM nginx:alpine

ADD .docker-compose/nginx/conf.d/ba-web.conf /etc/nginx/conf.d/ba-web.conf
ADD dist /usr/share/nginx/html/dist
RUN cat /etc/nginx/nginx.conf
RUN cat /etc/nginx/conf.d/ba-web.conf
RUN ls -al /usr/share/nginx/html

#FROM node:16
#
#WORKDIR /web/
#COPY . .
#
#RUN yarn && yarn build
#
#FROM nginx:alpine
#
#COPY .docker-compose/nginx/conf.d/my.conf /etc/nginx/conf.d/my.conf
#COPY --from=0 /web/dist /usr/share/nginx/html
#RUN cat /etc/nginx/nginx.conf
#RUN cat /etc/nginx/conf.d/my.conf
#RUN ls -al /usr/share/nginx/html
