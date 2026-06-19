FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set environment variables
ENV FLASK_APP=run.py
ENV SECRET_KEY=stackit_production_secret_key_123_abc
ENV FLASK_DEBUG=false
ENV PORT=5000

# Expose container port
EXPOSE 5000

# Use Gunicorn as production WSGI server
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "run:app"]
