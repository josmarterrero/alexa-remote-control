
# Alexa Remote Control Docker

This project contains a Dockerfile to set up and run the `alexa-remote-control` script by Thorsten Gehrig in a Docker container. The script allows controlling Alexa devices from the command line.

## Requirements

- Docker installed on your local machine.
- A Docker Hub account.
- A GitHub personal access token (PAT) for HTTPS authentication (optional but recommended).

## Instructions

### 1. Clone the Repository

First, clone this repository to your local machine.

```bash
git clone https://github.com/josmarterrero/alexa-remote-control.git
cd alexa-remote-control
```

### 2. Build the Docker Image

Build the Docker image using the provided Dockerfile.

```bash
docker build -t alexa-remote-control .
```

### 3. Run the Container

Once the image is built, run a container from this image.

```bash
docker run -it --name alexa-remote-control-ct alexa-remote-control
```

### 4. Obtain the Alexa Refresh Token

Inside the container, use `alexa-cookie2` to get the refresh token.

```bash
alexa-cookie2 --get
```

Follow the instructions to authenticate with your Amazon account and obtain the token.

### 5. Configure the `alexa_remote_control` Script

1. Open the `alexa_remote_control.sh` script for editing.

```bash
nano alexa_remote_control.sh
```

2. Find the line containing `REFRESH_TOKEN` and replace it with your actual refresh token.

```sh
# Replace 'YOUR_REFRESH_TOKEN' with your actual refresh token
REFRESH_TOKEN="YOUR_REFRESH_TOKEN"
```

### 6. Use Alexa Remote Control

After configuring the refresh token, you can use the script to send commands to your Alexa device.

- **Get the current time:**

```bash
./alexa_remote_control.sh -d "Echo Dot" -e speak:"Alexa, what time is it?"
```

- **Get the weather:**

```bash
./alexa_remote_control.sh -d "Echo Dot" -e speak:"Alexa, what's the weather like?"
```

- **Play music:**

```bash
./alexa_remote_control.sh -d "Echo Dot" -e play
```

## Credits

This project uses the `alexa-remote-control` script created by Thorsten Gehrig. You can find the original repository here: [thorsten-gehrig/alexa-remote-control](https://github.com/thorsten-gehrig/alexa-remote-control).


