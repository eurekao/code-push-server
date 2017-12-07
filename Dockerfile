FROM node:alpine
COPY . /opt/codepush-server
WORKDIR /opt/codepush-server
RUN npm --registry https://registry.npm.taobao.org install --production 
ENV NODE_ENV production
ENV PORT 80
EXPOSE 80
CMD [ "./bin/www" ]