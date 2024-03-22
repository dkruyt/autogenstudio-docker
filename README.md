# AutogenStudio

This is a Docker build and compose of AutogenStudio, based upon Python 3.11. The application is running under a pseudouser `autogenstudio` and not root.

## Getting Started

These instructions will guide you to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- You will need [Docker](https://docs.docker.com/get-docker) and [Docker Compose](https://docs.docker.com/compose/install) installed on your local system.

### Build & Run

1. Clone the repository:
    ```bash
    git clone https://github.com/dkruyt/autogenstudio-docker.git
    ```
2. Move into the cloned directory:
    ```bash
    cd autogenstudio-docker
    ```
3. Build and run the Docker container:
    ```bash
    docker-compose up -d --build
    ```

By default, the application will be accessible at [http://localhost:8081](http://localhost:8081).
## Configuration

You can configure the AutogenStudio application using environment variables.

| Environment Variable | Description           |
| :------------------: | :-------------------: |
| OPENAI_API_KEY       | Your OpenAI API Key   |

## Docker Volumes

Data in the application is persisted using Docker volumes. The volume `autogenstudio_data` is configured to store data in the `/home/autogenstudio/.autogenstudio` directory inside the Docker container.
