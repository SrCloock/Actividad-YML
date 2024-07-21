FROM python:3.12.4-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py app.py
EXPOSE 5000
CMD ["python", "app.py"]
