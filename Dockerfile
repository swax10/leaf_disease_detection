# Description: Dockerfile for the bookworm project
FROM python:3.11-slim-bookworm

# Set the environment variable
ENV PYTHONUNBUFFERED 1

# Create the working directory
WORKDIR /app

# Copy the rest of the code
COPY . .

RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your Flask app runs on
EXPOSE 5000

# Define the command to run your Flask app when the container starts
CMD ["python", "app.py", "runserver"]

# Backup CMD command to run the app on port 8080
#CMD ["python3", "app.py", "runserver", "-h", "0.0.0.0", "-p", "8080"]
