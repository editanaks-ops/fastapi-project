#!/bin/bash

echo "Начинаем создание FastAPI проекта"

# создаём папку проекта
if [ -d "fastapi_project" ]; then
    echo "Папка уже существует"
else
    mkdir fastapi_project
    echo "Папка создана"
fi

cd fastapi_project

# создаём виртуальное окружение
echo "Создаём виртуальное окружение"
python3 -m venv venv

# активируем окружение
source venv/bin/activate

# устанавливаем зависимости
echo "Устанавливаем зависимости"
pip install fastapi uvicorn

# создаём main.py
echo "Создаём main.py"
cat <<EOL > main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, FastAPI!"}

@app.get("/hello/{name}")
def say_hello(name: str):
    return {"message": f"Привет, {name}!"}
EOL

echo "Проект успешно создан!"
echo "Для запуска:"
echo "cd fastapi_project"
echo "source venv/bin/activate"
echo "uvicorn main:app --reload" 
