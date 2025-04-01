Description: Verify Luke Skywalker's hair color using API

Scenario: Verify Luke's hair is blond
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/people/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.hair_color` is equal to `blond`
