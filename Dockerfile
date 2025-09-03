FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source
COPY . .

# Expose port for Render
EXPOSE 8080

# Run production server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
