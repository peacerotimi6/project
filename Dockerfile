FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

# Expose port
EXPOSE 8000

# Command to run the app
CMD ["python", "main.py"]
