FROM python:3.9

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py requirements.txt /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 libgl1 -y

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
