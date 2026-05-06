# FastAPI Project

![Python](https://img.shields.io/badge/Python-3.12-blue)
![FastAPI](https://img.shields.io/badge/FastAPI-API-green)
![Uvicorn](https://img.shields.io/badge/Uvicorn-ASGI-orange)
![Status](https://img.shields.io/badge/status-working-success)

##  Описание проекта

FastAPI Project — это учебный API-сервис, созданный для практики работы с Linux, Bash, виртуальным окружением Python, FastAPI и Git.

Проект демонстрирует базовые возможности backend-разработки:

- запуск веб-сервера через Uvicorn
- создание API-эндпоинтов
- обработка параметров из URL
- возврат данных в формате JSON
- автоматизация настройки проекта через Bash-скрипт

---

## 🖼 Swagger UI

Документация API доступна по адресу:

```text
http://127.0.0.1:8000/docs

##  Запуск проекта

```bash
cd fastapi_project
source venv/bin/activate
uvicorn main: app --reload

 Открыть в браузере:
http://127.0.0.1:8000
```

## Эндпоинты
1. Главная
   
   GET /
   
   Ответ: {"message": "Hello, FastAPI!"}
 2. Приветствие
    
    GET /hello/{name}
    
 Пример:
/hello/Edita

Ответ: {"message": "Привет, Edita!"}

3. Сложение
   GET /sum/{a}/{b}
   
   Пример:
   /sum/5/7
   
   Ответ:{"result": 12}

 ##  Технологии

Python 3.12
FastAPI
Uvicorn
Bash
Linux / WSL

## Swagger (локально)

[![Open in Swagger](https://img.shields.io/badge/API-Swagger-blue)](http://127.0.0.1:8000/docs)

 Доступно только при запущенном локальном сервере




   
