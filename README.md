# RPS Challenge

- This is a Sinatra-based web app for playing rock, paper, scissors against the computer

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How to use this code

- Clone this code and run bundle install in the project directory
- In the terminal, type rackup config.ru to run
- Go to localhost:[port_number] in your browser to use the app

## My approach

- User plays by entering their name on the homepage, then choosing Rock, Paper or Scissors on following page
- User sees what the computer chose and whether the user won, lost or drew on the next page
- The user can play as many times as he or she likes
- The model layer is designed using the singleton pattern
- Tests are written using rspec and capybara
