FROM python:3.10-slim

# Install curl + clean apt cache
RUN apt-get update && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install dependencies WITHOUT cache
RUN pip install --no-cache-dir -r requirements.txt

# Copy app later
COPY app.py .

CMD ["python", "app.py"]
