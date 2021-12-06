# Rock Paper Scissor challenge

User Stories:

_As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game_

_As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors_

---
Created 3 classes:
- a **Bot** class with a **random_choice** method that returns either _rock_, _paper_ or _scissors_.
- a **Player** class initialized with a **name**. It has 3 methods: **choose_rock**, **choose_paper**, **choose_scissors** and returns each objects respectively.
- a **Game** class with 3 methods: **with_rock**, **with_paper**, **with_scissors**. Each methods takes a random_choice as argument and returns a winner following the basic Rock Paper Scissors rules.

Created 2 views:
- **index.erb** - 'the sign_in' page
- **play.erb** - 'where the fun is happening' page

---
Result:

This is the sign in page where the user can register the name before playing.
![Sign in Page](/images/Sign_in_page.png)

---
This is the first view of the play page, right after you sign in.
You can see points of both the bot and the player. Starting at 0 obviously.  
The choice of both the bot and player will appear respectively.  
3 buttons for the player.
![Play view at first](/images/play_page_at_first.png)

---
Each turn when the player or bot wins there is a message announcing that. If it's a tie 'Nobody wins' will appear.
![Play view while playing](/images/a_few_turns_played.png)

---
I have added a limit to end the game. When either the player or the bot reaches 10 points the game is over.
![Game Over in play view](/images/game_over.png)

---
_Notes_: I know some of my controller are a bit 'fat' 😅 , I just wanted to show as much as possible in the web app (bot points and random choice, player points and choice, winner at each turn...), and at this moment I couldn't find a way around it. Maybe in the next week with other tools I'll find a better way.. Everything has been TDD. (I just coudn't exactly test the randomness in feature tests but coverage is 99.50%)

---
TO TRY OUT:

```
git clone https://github.com/Riky5/rps-challenge.git
```
Run:
``` 
bundle install 
```
to install all the Gems.

Run:
```
rackup
```
to connect to the server.  

In a browser type
```
localhost:[PORT]
```
with PORT being the port number provided by rackup.

To run tests:
```
rspec
```

Sign_in and enjoy the game ☺️.
