### [Makers Academy](http://www.makersacademy.com) - Week 3 Weekend Project

Rock, Paper, Scissors Ruby Challenge - original README [here](https://github.com/makersacademy/rps-challenge/blob/master/README.md)
-

[Outline](#Outline) | [Task](#Task) | [User Stories](#User_Stories) | [Installation Instructions](#Installation_Instructions) | [Example run](#Example_run) | [Future work](#Future_work)

## <a name="Outline">Outline</a>

A Rock, Paper, Scissors game web app, built in Ruby.

## <a name="Task">The Task</a>

This challenge starts with going over the foundational skills from this week's Battle challenge, such as GET and POST HTTP requests and MVC approach to web apps. It also allowed me to play around with some more advanced formatting such as with background images.

## <a name="User_Stories">User Stories</a>

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## <a name="Installation_Instructions">Installation Instructions</a>

1. Clone this repo to your local machine and cd into it
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`
4. Run the server with command `rackup`
5. Visit `localhost:9292` in your browser and play away!
6. Tests can be run using Rspec. Run command: `rspec`

## <a name="Example_run">Example run</a>

Here is a functional example of how the webapp runs:

Run `rackup` in your command line, and visit `localhost:9292` in your browser

Enter your name and click 'Begin game' to start

![Homepage](https://i.imgur.com/metIxZ2.png)

That will take you here. Select your move:

![Move](https://i.imgur.com/HnR5Vep.png)

The game will then tell you who won, you or the computer.

![Win](https://i.imgur.com/2RyZmo2.png)

Or it could be a draw. In either case, click 'Play again' to start another game.

![Draw](https://i.imgur.com/eBUGSZq.png)

## <a name="Future_work">Future work</a>

I was able to complete the program to specification, using RSpec and Capybara to test drive it. In future, I will work on allowing a second player so that two humans can play against eachother. I would also like to make the user interface more graphical, perhaps by animating the win and loss. 
