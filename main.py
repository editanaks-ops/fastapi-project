from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, FastAPI!"}

@app.get("/hello/{name}")
def say_hello(name: str):
    return {"message": f"Привет, {name}!"}

@app.get("/sum/{a}/{b}")
def sum_numbers(a: int, b: int):
    return {"result": a + b}
