# Use Python 3.7 base image
FROM python:3.7

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt from the app directory to the working directory
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory to the container's /app folder
COPY app /app

# Expose port 5000 for Flask app
EXPOSE 5000

# Run the application using Gunicorn (recommended for production)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]
