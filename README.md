# RPS Challenge

This web application was built with Ruby and it allows user to play against a computer for unlimited number of times.

# Technology
----
Rspec and Capybar was used to achieve OOD and TDD methedology 
Separation concern - to seperate application Logic and Model layer

User Stories
----

```sh
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
# My Approach
----
I build the application using OOD to ensure the featurs and functionality I expected. 
Used Encapsulation so classes have single responsibilty. 
Polymorphisim so the game is easy to extend to two players or with a Bot when initializing the second player ```player_2 = Computer.new .. ```


## How to use Rock Paper Scissors
----
- Clone this repository to your local machine using commandline ```git clone https://github.com/becc-mu/rps-challenge.git ```
- Run the command ```gem install bandle``` to ensure you have all the gems then ``` run bundle ```
- To start the server, type ```ruby app.rb ``` 
- Open your browser and type ```http://localhost:4567``` 
- Sign in and play the game against a bot. 
- Make sure you shoudown your server from your commandline Control-C once you finished.


 ## How to play

- the user can enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the computer will choose a random option
- a winner will be declared


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Screenshots

![Login page](https://github.com/becc-mu/rps-challenge/blob/player_vs_computer/public/Screen%20Shot%202019-01-05%20at%2004.23.41.png)

![choose options](https://github.com/becc-mu/rps-challenge/blob/player_vs_computer/public/Screen%20Shot%202019-01-05%20at%2004.25.03.png)

![winner declared](https://github.com/becc-mu/rps-challenge/blob/player_vs_computer/public/Screen%20Shot%202019-01-05%20at%2004.25.40.png)
