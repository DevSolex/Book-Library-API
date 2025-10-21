FROM python:3.11-slim

WORKDIR /app

COPY requierments.txt .

RUN pip install -r requierments.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "task1:app", "--host", "0.0.0.0", "--port", "8000"]
