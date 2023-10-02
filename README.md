# Overview

This stack is to serve as a Proof of Concept (POC) of a Rails application server interacting with a Kafka stack to aggregate logs and consume messages.

Once the application is up and running, you can view logged events at http://localhost:9021 in the "log_messages" topic.

## Confluent

This seems to be the de-facto "best practice" for Kafka stacks these days, so I've just used their ["All-In-One"](https://github.com/confluentinc/cp-all-in-one/tree/7.5.0-post/cp-all-in-one) Docker Compose setup.

CAVEAT: This is my first time using this, and I am not an expert in configuring Kafka, so I'm standing on the shoulders of giants here.

## Rails

Attempting to use the simplest possible Rails application I can. Where I'm doing something that isn't "out of the box" Rails, I'll note it below:

### [Litestack](https://github.com/oldmoe/litestack)

Decided to remove having an external database as just another cog in the machine that adds complexity. For this POC, I'm just leaning on SQLite, even in the production environment. This also allows me to commit the DB to source control, so we don't need to worry about migrating/seeding, etc.

# Setup

For the Karafka Web UI to work, you need to have some event topics created in Karafka. You can do this by running `docker compose --rm app bundle exec karafka-web migrate` before running the stack for the first time.

# Usage

After running the karafka ui migration, running `docker compose up` will bring all services online.

## App

This is the core Rails application. It is accessible at http://localhost:3000

### Karafka Web UI

Mounted at http://localhost:3000/karafka

## Confluent

### Cluster Dashboard

Accessible at http://localhost:9021
