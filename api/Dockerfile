FROM alpine:latest

WORKDIR /api

COPY . .

RUN apk update

RUN apk add --no-cache python3 py3-pip && python3 -m venv .venv 

RUN chmod +x .venv/bin/activate 
RUN source .venv/bin/activate && pip install -r ./api/requirements.txt

CMD ["/api/.venv/bin/uvicorn","main:app","--host","0.0.0.0","--port","8080"]


EXPOSE 8080

