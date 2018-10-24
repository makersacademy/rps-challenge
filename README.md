# RPS Challenge

Web based Rock Paper Scissors game!

User Stories
-------
```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Clone the repo, run ```bundle install``` and ```rackup config.ru```

Head to you localhostXXXX where XXXX is the port number referenced by rack on terminal. 

Fill in your name and play!

## My Approach ##

The computer randomnly samples the three game options each turn. The game mechanics are computed in the Model layer and the Controller links the Presentation layer with the Model. 

