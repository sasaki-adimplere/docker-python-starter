from os import getenv
from tortoise import Tortoise

TORTOISE_ORM = {
    "connections": {"default": getenv("DATABASE_URL")},
    "apps": {
        "models": {
            "models": ["app.infrastructure.persistence.models", "aerich.models"],
            "default_connection": "default",
        },
    },
}

async def init():
    await Tortoise.init(
        config=TORTOISE_ORM
    )
