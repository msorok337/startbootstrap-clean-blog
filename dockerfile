# Используем легковесный веб-сервер Nginx
FROM nginx:alpine

# Копируем файлы сайта в папку Nginx
COPY . /usr/share/nginx/html

# Опционально: указываем порт (для документации)
EXPOSE 80
