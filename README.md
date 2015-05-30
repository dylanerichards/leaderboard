#Leaderboard
## A RESTful API

### Run instructions

  - Clone the repository and `cd` into it
  - Run `rake db:migrate`
  - Run `rails server`
  - Visit `localhost:3000`

### Consuming the API

  Since the application has no front-end, you will need a tool to submit requests to the API. A nice one is [Postman](http://www.getpostman.com).

#### Available endpoints

  - `GET /players` -- Returns the top 100 players sorted by score
  - `POST /` -- The request must be sent with with `name` and `score` parameters. If a player already exists for the provided name, that player is updated with the given score.
  - `GET /:name` -- Returns the first player in the database for the given name.
  - `GET /?offset=N&size=M` -- Returns up to `size` players, sorted by rank, starting at `offset`
  - `DELETE /:name` -- Removes the named player from the database
