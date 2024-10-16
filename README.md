## Live Docker

This repository contains a collection of scripts and tools for managing and working with Docker containers in a live environment. 

### Features

- **Automatic container startup on system boot:** Ensures that your critical applications are always running, even after a system restart.
- **Automated container updates:** Easily keep your containers updated with the latest versions of your applications and dependencies.
- **Container health monitoring:** Monitor the status of your containers and receive alerts when they encounter issues.
- **Simplified container management:** Streamline the process of creating, deploying, and managing your Docker containers.

### Requirements

- Docker
- Docker Compose (optional, for multi-container deployments)
- A Linux system (tested on Ubuntu and Debian)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/robertarfa/live-docker.git
   ```

2. Install the required dependencies:
   ```bash
   sudo apt-get update
   sudo apt-get install docker.io docker-compose (optional)
   ```

3. Configure the scripts to your specific needs. Refer to the README files within each script directory for detailed instructions.

### Usage

- **Start containers on boot:**  Enable the service that starts your containers on system startup. Refer to the `boot` directory for specific instructions.
- **Update containers automatically:** Configure the cron job that automatically updates your containers. Refer to the `update` directory for specific instructions.
- **Monitor container health:** Use the provided scripts to monitor the health of your containers and receive alerts. Refer to the `health` directory for specific instructions.
- **Simplify container management:** Use the provided scripts to streamline the process of creating, deploying, and managing your Docker containers. Refer to the `management` directory for specific instructions.

### Contributing

Contributions are welcome! Feel free to submit pull requests, open issues, or propose new features. 

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
