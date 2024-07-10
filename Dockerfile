FROM nginx:1.25-alpine3.18 AS cyberchef
ADD build/prod /usr/share/nginx/html/cyberchef
