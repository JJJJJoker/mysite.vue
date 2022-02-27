# nginx镜像compose/nginx/Dockerfile
 FROM nginx:latest
 
 RUN rm /etc/nginx/conf.d/default.conf 
 
 RUN mkdir -p /joker/mysite/dist

 ADD ./dist /joker/mysite/dist

 # 添加配置文件
 ADD ./nginx.conf /etc/nginx/conf.d/
 # 关闭守护模式
 CMD ["nginx", "-g", "daemon off;"]