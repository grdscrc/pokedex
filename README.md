# README

* Ruby version
`3.0.3`

* Rails version
`7.0.1`

* Configuration
`bundle install`

* Database creation
`rails db:setup`

* How to run the test suite
`rails test`

# Usage

## Index
__`GET /`__ | __`GET /?page=1&per_page=30`__
&rarr;

    { "pokemons": [
        { "id": 1, "number": 1, "name": "Bulbasaur", "type1": "Grass", "type2": "Poison", "total": 318, "hp": 45, "attack": 49, "defense": 49, "spAtk": 65, "spDef": 65, "speed": 45, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.543Z", "updated_at": "2022-02-03T17: 46: 46.543Z" }, 
        { "id": 2, "number": 2, "name": "Ivysaur", "type1": "Grass", "type2": "Poison", "total": 405, "hp": 60, "attack": 62, "defense": 63, "spAtk": 80, "spDef": 80, "speed": 60, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.558Z", "updated_at": "2022-02-03T17: 46: 46.558Z" }, 
        { "id": 3, "number": 3, "name": "Venusaur", "type1": "Grass", "type2": "Poison", "total": 525, "hp": 80, "attack": 82, "defense": 83, "spAtk": 100, "spDef": 100, "speed": 80, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.576Z", "updated_at": "2022-02-03T17: 46: 46.576Z" }, 
        { "id": 4, "number": 3, "name": "VenusaurMega Venusaur", "type1": "Grass", "type2": "Poison", "total": 625, "hp": 80, "attack": 100, "defense": 123, "spAtk": 122, "spDef": 120, "speed": 80, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.594Z", "updated_at": "2022-02-03T17: 46: 46.594Z" }, 
        { "id": 5, "number": 4, "name": "Charmander", "type1": "Fire", "type2": null, "total": 309, "hp": 39, "attack": 52, "defense": 43, "spAtk": 60, "spDef": 50, "speed": 65, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.610Z", "updated_at": "2022-02-03T17: 46: 46.610Z" }, 
        ...], 
        "per_page": 30, 
        "links": { "first": "/?page=1", "next": "/?page=2", "last": "/?page=27" }
    }

## Show
__`GET /pokemon/7`__
&rarr;

    { "id": 7, "number": 6, "name": "Charizard", "type1": "Fire", "type2": "Flying", "total": 534, "hp": 78, "attack": 84, "defense": 78, "spAtk": 109, "spDef": 85, "speed": 100, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.642Z", "updated_at": "2022-02-03T17: 46: 46.642Z" }

## Update
__`PUT /pokemon/7 { "pokemon": { "name": "Morgane" }}`__
&rarr;

    { "id": 7, "number": 6, "name": "Morgane", "type1": "Fire", "type2": "Flying", "total": 534, "hp": 78, "attack": 84, "defense": 78, "spAtk": 109, "spDef": 85, "speed": 100, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.642Z", "updated_at": "2022-02-03T17: 46: 46.642Z" }

## Create
__`POST /pokemon { "number": 3000, "name": "Kali", "type1": "Normal", "total": 325, "hp": 55, "attack": 55, "defense": 50, "spAtk": 45, "spDef": 65, "speed": 55, "generation": 7, "legendary": true}"`__
&rarr;

    { "id": 801, "number": 3000, "name": "Kali", "type1": "Normal", "type2": null, "total": 325, "hp": 55, "attack": 55, "defense": 50, "spAtk": 45, "spDef": 65, "speed": 55, "generation": 1, "legendary": true, "created_at": "2022-02-03T17: 46: 48.683Z", "updated_at": "2022-02-03T17: 46: 48.683Z" }"

## Delete
__`DELETE /pokemon/7`__
&rarr;
    
    { "id": 7, "number": 6, "name": "Morgane", "type1": "Fire", "type2": "Flying", "total": 534, "hp": 78, "attack": 84, "defense": 78, "spAtk": 109, "spDef": 85, "speed": 100, "generation": 1, "legendary": false, "created_at": "2022-02-03T17: 46: 46.642Z", "updated_at": "2022-02-03T17: 46: 46.642Z" }
