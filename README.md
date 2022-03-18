RPS Challenge
========

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Getting started
--------
Start by cloning the project
```bash
git clone https://github.com/adamwoodcock98/rps-challenge
```
If you do not have it already, use Homebrew to install bundler
```bash
brew install bundler
```
Run `bundle` to install gemfiles

Basic Rules
-------

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Instructions
-------
### Using rack
This app is built using Sinatra/HTTP requests, we can use rack to simulate a client/server on our local machine.

Start by navigating to the project directory in terminal:

```bash
% cd My/Project/Directory/rps-challenge
% rackup
[2022-03-14 20:40:38] INFO  WEBrick 1.7.0
[2022-03-14 20:40:38] INFO  ruby 3.0.2 (2021-07-07) [x86_64-darwin21]
[2022-03-14 20:40:38] INFO  WEBrick::HTTPServer#start: pid=23671 port=9292
```
You can now navigate to `localhost:9292` (or whatever rackup outputs as the port) in your browser.

![localhost](https://github.com/adamwoodcock98/MakersPortfolio/blob/main/Evidence/localhost.png?raw=true)

## Entering your name

You will be greeted with the following page:

![landing](https://github.com/adamwoodcock98/MakersPortfolio/blob/main/Evidence/RPS-Landing.png?raw=true)

You can now enter a name, then click Play!

## Playing the game

That's it! You can now go ahead and select your *weapon* of choice: Rock, Paper, or Scissors.

Who will win, you or the CPU? There is only one way to find out.

## Takeaways

I really enjoyed completing this challenge, I speak about my thoughts and feelings for this challenge [over on my blog for that day](https://medium.com/@adam.woodcock98/the-sql-is-never-as-good-as-the-original-makers-day-16-5330bad58290), feel free to take a peek!
