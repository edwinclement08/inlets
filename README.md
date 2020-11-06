# Inlets
Simple Dockerization of https://github.com/inlets/inlets

# Usage

## As a standalone container

Run the following command in your shell. The TOKEN will be the shared password that you will be using with the client.
The Published port(8081) is what you would pass to your inlets client

`docker run -e "TOKEN=test" -p 8081:8080  edwinclement08/inlets`

The client command for this would be(The service to be routed is 0.0.0.0:3000 i.e. locally running server at 3000)

`inlets client --remote="localhost:8081" --upstream="http://0.0.0.0:3000" --token=test`

## Running as part of docker-compose installation
You can add the service section given in the `docker-compose.yml` to yours.

```
inlets:
    image: edwinclement08/inlets
    environment:
        - TOKEN=this_should_be_changed_to_a_random_string
    ports: 
        - 8081:8080
```

NOTE: Make sure to change the token so the others .

# Troubleshooting

If you don't pass the TOKEN environment variables, the server program will refuse to start.
