# RPS Challenge

A simple web app to play a game of rock paper scissors. The program accepts and stores a name and allows you to play as many games as you like. To see full instructions on task please see Project instructions.md.

## Getting Started

```
rackup config.ru

visit localhost:9292 (usually but terminal output confirms!)


```

### Prerequisites

```
- terminal
- ruby 2.5.1
- Rackup
- Capybara
- Rspec
- Sinatra

```

### User stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```


### Approach

I approached this task with heavy feet and a dragging mind. To say going into this challenge that I had little motivation to complete it would be accurate if a little restrained. However approach the task I did, despite its herculean outlook from the beginning. I approached this task less with a mind to complete it, but with a mind to practice the processes given to us by makers and to solidify my knowledge of the last 3 weeks.

My overall approach was test driven and I followed a solid red - green - refactor - commit process and my commit history certainly shows this up to a point.

Further I decided I would wholly focus on logic ands functionality from the beginning and only add and design or visual elements once all functionality was in place. This method I feel served me well as in its current state my program simply functions and functions well from a user perspective. It does sadly have no design to it currently and as such would need to be worked on further to make the game more visually interesting.

Another new method used this project was the use of README2 as a notebook and journal, here I noted down my thought processes as I went, sometimes typing them to the computer in lieu of a rubber duck to talk to. This method worked very well for getting me unblocked and also provides a log of my thoughts and learnings along the way.

 I must of course cover what is not here in this project. AS mentioned there is no visual styling and currently some parts of the code are ugly and definitely not keeping with SRP. Sadly this project was a touch one for me and time escaped me in its fleeting manner as it is want to do. Due to time escaping me and the twin headed demons of exhaustion and frustration catching up to me, sadly my approach failed at the final hurdle, implementing one test to see if who wins can be decided caused an avalanche of coding and writing all of which was not in service to the greater goal. At the time of realising this it is fair to say an approach of 'just get it done' took over. This is not the right approach but explains why there may seem to be a strange break in process at the end, as verified by commits as well.

 Finally, as my approach on this project was solely on learning and solidifying knowledge you will note a lack of examples in this README, this is done on purpose, deciding to focus on my own learnings in this reflection rather than presenting what is realistically some shabby code that taught the author quite a lot about his own abilities and knowledges.

### Work still to be done

Moving forward with this project I would ideally start by test driving the current classes and views to enable multiplayer. I imagine this extension to the code should be relatively simple to implement but more difficult to test.
Next I would move onto styling, adding some visual elements would be a great improvement on the current user experience as of now it is rather dull.

Further I would need to look at the tests again to ensure they are all testing something correctly, and to ensure that all my code is tested. Currently sitting on around 89% coverage. I understand the reasons why this happened(see approach or final README2 entry.)

#### Refactoring to be done Code

 - The final get '/play_game' method is a mess, an unholy mess that must be burned with fire and purified in the light of refactoring.
 - The class structure and how the program calls the classes could use some tidying up or changing to be simpler.
 - The if - else statement could be looked at to make it shorter.
 - GameAI should probably be renamed to something more descriptive and accurate

#### Refactoring to be done tests

- The game_spec needs work to find coverage on the last few lines but new tests and adding other tests of certain conditions seems a bit pointless?
- More tests added and used to drive the refactor of the final steps - deciding who has won and outputting the winner. This would be a thorough refactor closer to an overhaul I feel.
- I feel like I do not have enough tests despite my program being really test driven and so I would look into this deeper.

#### Learnings extracted and focused on

- I can TDD anything - I now believe I can start saying 'I think I can TDD anything' - Hesitantly.
- How important it is to stick to process and not let yourself fall at the last hurdle.
- The previous point also demonstrates the difference between TDD code and code from just making it work. My final section works but could have been made to work a whole lot better and with less ugly code.
- I have a methodical approach - I feel I definitely worked on and fed into this learning vastly, especially as this project beautifully provides good examples of what happens when a process breaks down and what happens when it goes really well.
- I can debug anything - This project was full of debugging steps and following the method provided to us I find really helpful. Each debugging process for this project was calm, coordinated and precise, I p'd everywhere to gain visibility and inform my hypothesis of what was going on, I found I could debug things faster and faster the more rigorously I stuck to that method.
-

## Authors


* **Georges Le Vaillant** - [GLV](https://github.com/stonefarmer9)



## Acknowledgments

* Makers Academy
