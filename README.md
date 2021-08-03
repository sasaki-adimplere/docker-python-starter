# Python Project Starter

## First steps

```bash
# Building the container
docker-compose build

# Start the containers
# Will start a postgres instance
docker-compose up -d
```

## About Tortoise ORM

```python
# Define your models at /app/infrastructure/persistence/models.py
# Examples
from tortoise.models import Model
from tortoise import fields

class Pokemon(Model):
    id = field.IntField(pk=True)
    name = field.CharField(255, unique=True)
```

### Create the database

```shell
poetry run aerich init-db
```

### Change the model

```python
from tortoise.models import Model
from tortoise import fields

class Pokemon(Model):
    id = field.IntField(pk=True)
    name = field.CharField(255, unique=True)
    evolve_at = field.IntField()
```

### Create the migration and upgrade!

```shell
poetry run aerich migrate
poetry run aerich upgrade
```

