# RPS Challenge

Instructions to this challenge can be found [here](https://github.com/makersacademy/rps-challenge).

## Approach

- TDD
- MVC
- Web app framework: sinatra
- Test framework: Capybara and Rspec
- Middleware: Rack

Break the task into smaller bites:<br>
1) Player register his/her name before the game.
  - client sends get request to server for the `/index` page
  - index page displays a form that ask for user name

2) Display player's name.
  - user submit name and browser send form data through POST request to the server
  - the server then redirect to a GET request.

3) Player can choose rock/papers/scissors(RPS).
  - on the `/play` page, user can choose among the R/P/S buttons
  - client will send GET request to server which directs to the /game route
  - the /game route will contain a allow interaction with relevant models
