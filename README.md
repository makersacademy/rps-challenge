## Rock, Paper, Scissors Challenge

```
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)

    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
```

### The Challenge

This is the third weekend challenge of the Makers Academy bootcamp. The challenge was to create a web app 
Rock, Paper, Scissors game using Sinatra. I've deployed it through Heroku and you can play it [here](http://rockpaperscissors-42.herokuapp.com/).

### My Approach

I started out by using a TDD approach to make a very basic, not so user-friendly game that met the 
requirements in a very simple way. I had the vague thought that modulo could be used to decide the outcome
of the game, and after a quick google, came across [this article](https://therenegadecoder.com/code/rock-paper-scissors-using-modular-arithmetic/) and adapted the method for my code.
After I had a playable game, I set about refactoring and making the user experience more enjoyable. 
I decided to add a way to keep track of the score to keep users clicking :)

### Things I'd Like to Improve

- I've used a global variable to instantiate the Game class which needs to go as soon as possible!
- I'd really like to make it multiplayer
- It's my first time using CSS and I think there might be a lot of redundancies and things in the 
stylesheet
- The Player class seems a little pointless!