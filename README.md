+ Rock Paper Scissors Challenge

++ How to run

```sh
rackup config.ru
```

Then access localhost on the port specified by rackup in a web browser.


++ Approach

Having previously implemented Rock Paper Scissors as a terminal program using Python, making use of a master hash table to look up the result of different weapons combinations, I was keen to try a different approach.

Exploring the principle of **Tell, Don't Ask**, I decided that an object representing a weapon (Rock or Paper or Scissors) was the appropriate entity for knowing the win or lose conditions for that weapon. I was also interested in experimenting with item factories (inspired by [Sandi Metz's approach to the Gilded Rose challenge](https://www.youtube.com/watch?v=8bZh5LMaSmE)), so I chose to convert user inputted weapons into weapon objects via a WeaponFactory module.

Thinking about skinny controllers, I didn't want my controller (app.rb) to have much responsibility for running the Rock Paper Scissors game. Instead, I wanted it to delegate everything to a Game class, which could in turn look after the generation of the computer opponent's weapon and then find out the result of pitting those two weapons against each other.

I took on the extension to implement multiplayer functionality. I chose to split the logic involved in this between the controller (sometimes a multiplayer game uses a different route than a solo game) and the views (/play and the final /win, /lose and /draw pages have conditional content based on the game type.) Partly I wanted to experiment with both approaches, but I tried to apply the former approach where I felt whole additional functionality was required (getting a new name) and the latter where it seemed the underlying implementation wasn't changing much.


++ Challenges

I'm still uncertain about mocking for randomness. I saw an example in the Battle challenge walkthrough where Rspec was used to modify the result of calling `Kernel.rand` in order to control the random elements in feature tests, and demonstrate expected winning or losing behaviour. I didn't particularly want my source code to use `Kernel.rand` since calling `['Rock', 'Paper', 'Scissors'].sample` is more readable. I therefore extracted this function out to a RandomWeapon class so that I could stub its outputs as part of my feature tests (`allow(RandomWeapon).to receive(:choose).and_return('Rock')`). I'm not sure if this is the best approach, since it removes part of my code base from being executed by my feature test. I also wasn't confident about the unit tests I wrote for RandomWeapon itself - they test validity of output, but do not really test randomness - although perhaps it's acceptable to lean on Ruby's built in random functionality in this way.

I'm also uncertain about mocking item factories effectively. I found some disagreement online about whether it's really appropriate for a mock to return another mock. This seems to be because it isn't very in-keeping with the Law of Demeter - if the class you're testing needs to call functionality on an instance of a class, shouldn't it just instantiate that class itself, rather than reaching it through another object? In the case of my code, I decided it was acceptable for my mock WeaponFactory to return a mock weapon instance, since the entire point of WeaponFactory was to extract logic for choosing item types out of the Game class - Game doesn't mind what weapon the player chooses, it just needs an appropriate object that it can call #fight on. Really my Game class needed a mock weapon instance, it just happened to have to go through WeaponFactory to get to it.

I did not commit at all while working on the first part of the project. This was lazy, and reflected that I struggled sometimes to trace a clear line through writing this code. There weren't many natural pauses, since I found myself accidentally writing tests after source code, having failed to identify what really needed testing, and constantly revisiting and second guessing my approach. The new layer of web application control logic seems to have brought back old bad habits of imagining source code/implementation detail before imagining tests.


++ The Brief

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```