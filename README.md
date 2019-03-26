# RPS challenge
[![Build Status](https://travis-ci.com/Hives/rps-challenge.svg?branch=master)](https://travis-ci.com/Hives/rps-challenge)

Useful links:
- *[Exercise instructions](instructions.md)*
- *[Contribution guidelines](CONTRIBUTING.md)*
- *[Rubric](https://github.com/makersacademy/rps-challenge/blob/master/docs/review.md)*

## Installation

1. clone the repo
2. `cd` into the directory
3. `bundle install`
4. `rackup -p 4567`
5. go to `localhost:4567` in your browser

## Thoughts etc.

### TDD

I felt I had a good TDD process for the beginning of this project, switching between the feature test and unit test levels and developing my code and tests in small increments. My git commit history tells the story.

After I had implemented a lot of the functionality I went into a big refactoring phase, for which my tests gave me confidence that I wasn't breaking my code, but at that point I missed the structure of the RED->GREEN testing cycle, and found it harder to manage the project.

I think I could have made my life easier by refactoring earlier, or even incorporating some aspects of the later design at the start, instead of waiting for the refactoring stages - e.g. extracting my Game and Player classes much earlier.

This is a question in my mind - how early should you do stuff like creating classes? Too early and it seems like you're breaking the TDD principle of writing the least code to pass your tests, but the later you leave it the more time-consuming it becomes.

Maybe the principle of writing the least code applies to the GREEN->RED part of the cycle, but not so much for the refactoring part? In which case you can start on e.g. adding your classes as soon as they might become useful?

In future I want to try and be more conscious of the 'refactor' part of the red->green->refactor cycle as I'm going along, so I'm not left with a massive refactoring task at the end.

### Separation of concerns

I was trying to achieve this as I was working, but I knew I had some presentational aspects being implemented in my `Game` class - I couldn't work out a good way to fix it.

When I read the rubric after completing the project it described a way to have the model tell the view layer to load different `.erb` files depending on logic in the model, so I implemented something along those lines, e.g. in [this commit](https://github.com/Hives/rps-challenge/commit/cabc7749dce595cb955a85e14a61d8101d607b74).

There are a few other places where I need to go back and separate content out of the model layer. E.g. there's no way the names of the choices should be [stored in the player class](https://github.com/Hives/rps-challenge/blob/1ef6aacd83112253a7d0de5f98dac3cbc04beee0/lib/player.rb#L4), what was I thinking?!

I'm not sure what I should do about this 'warning' message that I refactored [in this commit](https://github.com/Hives/rps-challenge/commit/1ef6aacd83112253a7d0de5f98dac3cbc04beee0) - I've still left some logic in the view - [see line 2 here](https://github.com/Hives/rps-challenge/blob/1ef6aacd83112253a7d0de5f98dac3cbc04beee0/views/play.erb#L2). If I'd been displaying either one template or another there I could have done something like:
```ruby
class Game
  def choose_template
    [:one_template, :another_template].sample
  end
end
```
and in the view:
```ruby
<%= erb game.choose_template %>
```
But since I wanted to display either something or nothing at all, I couldn't do it like that - `erb` gives an error if you pass it nothing. I suppose I could have passed an `:empty_template_file` back to the view, but that doesn't seem like a great solution either. So the minimal logic I left in the view seemed like the best option to me.

### Routing

I ended up getting some of my routes to do more than one thing. E.g. my `/choose` [route here](https://github.com/Hives/rps-challenge/blob/1ef6aacd83112253a7d0de5f98dac3cbc04beee0/app.rb#L45) is used to log the choices of player 1 and player 2, and does something different again if player 2 is a computer player. It seemed like the neatest way of handling the behaviour, but after reading [the rubric](https://github.com/makersacademy/rps-challenge/blob/master/docs/review.md#inconsistent-routing-and-route-naming) it seems like 'routes should not have dual purposes', (let alone three...) so maybe I should look at separating the different tasks there into their own routes. And there are a couple of other routes I could apply the same principle to.

### Single responsibility principle

If I was to continue with this project I would create a separate RockPaperScissors object which would have handled the actual game logic. The current `Game` class is doing too much, keeping track of the players, their choices and evaluating the winner.

I was hoping to give the user the option to choose between *Rock, Paper, Scissors* and the *... Spock, Lizard* version. I had an idea that the logic for both could be handled in a general way in a single class. Or maybe you'd have a separate class for each, which could share some methods via a mixin or something (I don't know what a mixin is).

### Snazz

The CSS aspect wasn't a high priority for me this weekend, but it would have been nice to snazz it up a bit!

## Coach feedback

I asked Katerina for some feedback
- [ ] Not very RESTful route names - should be more specific, e.g. `game/choose-move` rather than just `/choose` (choose what?). [Read this pill.](https://github.com/makersacademy/course/blob/master/pills/rest.md)
- [ ] Game counter seems a bit hacky...
- [ ] Re-using e.g. the same route for player 1 and 2 to make their choice is fine in principle
- [ ] It might be better to use the `session` for some of this stuff... storing whose turn it is maybe..?
- [ ] Check the [exemplar](https://github.com/makersacademy/rps-exemplar/blob/master/app.rb)

## Mentor feedback

- [ ] Luca thought I could make my routes more RESTful - e.g. use:

  - `POST '/resource'` to create something
  - `GET '/resource` to get something
  - `PUT '/resource` to update something
  - etc
  
  Think about how the route paths map onto how you're manipulating your game objects. e.g. you could do something like `GET '/turn/new'` to get a new turn or something? Would be good to read up on this. ([Try this pill](https://github.com/makersacademy/course/blob/master/pills/rest.md).) I think this is the same thing Katerina was saying about my routes not being very RESTful...

- [x] He thought the amount of logic in the `/choose` route was OK, but suggested a [slight refactoring](https://github.com/Hives/rps-challenge/commit/6fd8d2010441c063d813b93efcbf42fa3634719c), as my `if..elsif..else` wasn't running in parallel.

- [x] He also said I should extract the logic on [this line](https://github.com/Hives/rps-challenge/blob/6fd8d2010441c063d813b93efcbf42fa3634719c/app.rb#L47) into the Game class (e.g. `@game.over?` or something), that would be a quick win.
