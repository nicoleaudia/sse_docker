#Nicole Audia and Karen Chave SSE Lab

#use nginx runtime as base image
FROM nginx:latest

#set working dir
WORKDIR /usr/share/nginx/html

#copy some HTML files
COPY ./index.html /usr/share/nginx/html

#expose port 80
EXPOSE 80

#run nginx when running container
CMD ["nginx", "-g", "daemon off;"]
