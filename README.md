# locahost-https

A simple FastAPI application.

## Loca Machine: HTTP

1.  **Create a virtual environment:**
    ```bash
    uv venv
    ```

2.  **Install dependencies:**
    ```bash
    uv pip sync pyproject.toml
    ```

3.  **Activate and run fastapt APP**
    ```bash
    source .venv/bin/activate 
    uvicorn main:app --port 8080
    ```
    Open `http://0.0.0.0:8080`

## Docker: HTTPS

1. **Install mkcert:**
    ```
    brew install mkcert
    ```
2. **Create the `certs` directory:**
    ```bash
    mkdir -p certs
    ```
3. **Generate the certificates:**
    ```bash
    mkcert -key-file certs/localhost.key -cert-file certs/localhost.crt localhost 127.0.0.1 ::1
    ```
4. **Build and run the Docker container:**
    ```bash
    docker compose up -d --build
    ```
    Open `https://0.0.0.0:8080`


