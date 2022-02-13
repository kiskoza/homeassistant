# Homeassistant

Let's use the home-assistant-engine!

## Set up the project

1. Get a running Home Assistant using docker.
  ```bash
    docker run \
      --name homeassistant \
      --privileged \
      --restart=unless-stopped \
      -e TZ=Europe/Budapest \
      -v $(pwd)/ha-config:/config \
      --network=host \
      ghcr.io/home-assistant/home-assistant:stable
  ```
2. Copy secrets to ha-config
3. Install elixir with asdf

## Run the project

1. `docker start homeassistant` and `docker stop homeassistant` to manage the homeassistant instance
2. Start the app with `mix run --no-halt`

## Run the tests

1. `mix test --no-start`
