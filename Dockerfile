# Use a base image with Python (you can choose the version that fits your needs)
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file from the local app folder to the container
COPY app/requirements.txt /app/requirements.txt

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the application (main.py) into the container
COPY app /app

# Set the entry point to run your application (assuming main.py is the entry point)
CMD ["python", "main.py"]
