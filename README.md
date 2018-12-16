# RPS Challenge

## Makers Academy - Weekend challenge n. 3

Instructions
-------
A _Rock, Paper, Scissors_ web app game.

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

How did I approach the challenge?
----
- I first set-up the project and tested the correct working of the infrastructure.
- Once I did that, I've solved the first User Story in the simplest way possibile by just letting the user enter the name and displaying on the page.
- My next challenge was to store the user input within a session and not global variable.
- At this stage I wanted to implement the move. My next step it was to extract the user logic to a model.
- I started to think a class which could control the all game so I created the game class.
- Since I wanted to make the game based on 3 lifes chance, I implemented the lifes on the User class and the possibility to make multiple moves before the user or the computer won.
- Once the multiple moves and lifes were implemented I had to implement a method which could decrease the lifes from the user or the computer based on their move so I created a method which does the job.
- At this stage the web app needs a confirmation message to congratulate the winner.

Basic rules
----
- Log-in with your name and start to play
- Rock beats scissors
- Scissors beats paper
- Paper beats rock
- 3 lifes in total to win!

Get started
----
1. Clone this repo: 'git clone' git@github.com:emanuelegorga/rps-challenge.git
2. Change directory: 'cd rps-challenge'
3. Install dependencies: 'bundle install'
4. Run rackup to start the server locally: 'rackup'
5. Open your browser and go on to this default link: 'http://localhost:9292'
6. Enjoy your game.

Screens
----
1. Log-in with your name and make your first move!
![homepage](https://user-images.githubusercontent.com/40179292/50059489-5df01400-017f-11e9-925f-c323930b7260.png)
2. This is the page after each move. You can check how many lifes you and your enemy have left and make your next move.
![first_move](https://user-images.githubusercontent.com/40179292/50059518-cb03a980-017f-11e9-9df0-791723f212c4.png)
3. Once you do your move, the computer will do one automatically and afterwards you can make your next move from this page:
![next_move](https://user-images.githubusercontent.com/40179292/50059535-fdada200-017f-11e9-89f1-f019a2a2d6d3.png)
4. In case you and the computer make the same move will be a draw and nobody will lose any lifes.
![draw](https://user-images.githubusercontent.com/40179292/50059547-2e8dd700-0180-11e9-9847-64f04ea71aab.png)
5. After one of the players loose 3 lifes the other wins the game :D
![winner](https://user-images.githubusercontent.com/40179292/50059554-42d1d400-0180-11e9-9e5d-b8f2a085a444.png)
