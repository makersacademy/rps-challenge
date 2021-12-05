# Rock Paper Scissor challenge

User Stories:

_As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game_

_As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors_

---
I have created 3 classes:
- a **Bot** class with a **random_choice** method that returns either _rock_, _paper_ or _scissors_.
- a **Player** class initialized with a **name**. It has 3 methods: **choose_rock**, **choose_paper**, **choose_scissors** and returns each objects respectively.
- a **Winner** class with 3 methods: **with_rock**, **with_scissors**, **with_rock**. Each methods takes a random_choice as argument and returns a winner following the basic Rock Paper Scissors rules.

I have 2 views:
- **index.erb** - the sign_in page
- **play.erb** - where the fun is happening page

---
Result:

This is the sign in page where the user can register the name before playing.
![Sign in Page](/images/Sign_in_page.png)

---