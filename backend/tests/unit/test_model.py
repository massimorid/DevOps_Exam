from character_api.models import Character
import pytest

def test_create_character():
    """
    GIVEN a Character model
    WHEN a new Character is created
    THEN check the alias, name, level, health, strength, defense and speed are defined correctly
    """
    # Exercise III: Develop this test according to the definition and make it pass in the GitHub workflow
    character = Character('John Doe', 1, 100, 10, 5, 5)
    assert character.alias == 'John Doe'
    assert character.level == 1
    assert character.health == 100
    assert character.strength == 10
    assert character.defense == 5
    assert character.speed == 5