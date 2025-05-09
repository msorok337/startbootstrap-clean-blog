FROM nginx:alpine

# Удалим дефолтный html
RUN rm -rf /usr/share/nginx/html/*

# Копируем собранный сайт
COPY dist/ /usr/share/nginx/html/

# Обеспечим нужные права (не обязательно, но безопасно)
RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
