Rock, Paper, Scissor
==================
```
    _______             _______                  _______
---'   ____)        ---'   ____)___          ---'   ____)____
      (_____)                ______)_                  ______)
      (_____)                 _______)             __________)
      (____)               _______)                (____)
---.__(___)         ---'._____)              ---.__(___)

 ```

Task
-----

My task was to write a web app based game (Rock, Paper, Scissor). I spend as close to zero time on the front design as possible (can you tell?). It works as one player - or if a second name is given - as two player.


User stories
-----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Planning process and other notes
-----

[To aid my development, I diagrammed the functionality fully. Please look at it, it took me ages, though not as long as last week](https://drive.google.com/file/d/1AE88IhC5GSIrKsfEh6KBpUwViHeyMem_/view?usp=sharing).

Installation and set-up
-----

1. Clone the repo:
```
git clone https://github.com/benfurber/rps-challenge
```
2. Open the directory:
```
cd rps-challenge
```
3. Install/switch to Ruby 2.5.0:
```
rvm install 2.50
rvm use 'ruby-2.5.0'
```
4. Install bundle (if required) and run it:
```
gem install bundle
bundle
```
5. Check that the tests are still running and valid:
```
rspec
```
6. Use shotgun to run the server:
```
shotgun config.ru
```
