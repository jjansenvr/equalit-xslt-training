# XSLT Training

The [docker-compose.yml](docker-compose.yml) uses Compose profiles, so you choose which applications to start. No service starts without a profile.

| Profile          | Services                               | URLs                                                                 |
| ---------------- | -------------------------------------- | -------------------------------------------------------------------- |
| `xslt-tester`    | xslt-tester                            | http://localhost:3000                                                |
| `frankframework` | frankframework, frank-flow, swagger-ui | http://localhost:8080, http://localhost:8081, http://localhost:8082  |

## Start

Everything:

```
docker compose --profile frankframework --profile xslt-tester up
```

Only the XSLT tester:

```
docker compose --profile xslt-tester up
```

Only the Frank!Framework stack:

```
docker compose --profile frankframework up
```

Only the Frank!Framework stack, without profiles (naming a service enables its profile):

```
docker compose up frankframework frank-flow swagger-ui
```

Alternatively, set the profiles through an environment variable:

```
COMPOSE_PROFILES=frankframework,xslt-tester docker compose up
```

## Stop

Pass the same profiles to `down`:

```
docker compose --profile frankframework --profile xslt-tester down
```
