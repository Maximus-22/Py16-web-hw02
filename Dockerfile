# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це базовий образ Python на основi Alpine Linux
FROM python:3-alpine

# Встановимо змінну середовища
ENV APP_HOME=/app FILE_NAME="phonebook.json" 

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера
RUN pip install -r requirements.txt

# Позначимо порт, де працює застосунок всередині контейнера
# EXPOSE 5000

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python", "main_pb.py"]