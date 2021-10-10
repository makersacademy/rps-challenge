# RPS Challenge
=== Introduction ===
---------

This program lets the user:
- enter a name
- play **Rock Paper Scissors** against a **Computer** 
- see their result and play again.  Each result will show a different image (win, lose or draw)
- change user name

---------
=== How to install ===
---------
In your terminal run the commands:
```
$ git clone https://github.com/jtc27/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
rackup will launch app.rb and show the 4 digit port number (example: port=5678).  In your browser type in  that port number like this: http://localhost:5678

In that address you will see the starting page of the RPS web app

=== Approach ===
---------
1. I approached this the same way as the Battle challenge.  I created a directory outline with the lib, spec and views folders.

2. The biggest blocker was creating a set of rules for RPS.  I wanted the rules to be orderly and readable, so I used [this hash](https://stackoverflow.com/questions/10923486/hw-impossibility-create-a-rock-paper-scissors-program-in-ruby-without-using-c)

3. Another challenge was incorporating Player One's choice into the controller (app.rb).  But this was a matter of putting the params[:player_choice] into some instance variables.

4. Feature tests were easier to write than unit tests.  I could visualize the test events happening on each webpage.

5. Here is some sample irb code.  ```c1.weapon_select``` is the random weapon selector for the computer.

```
3.0.0 :001 > require './lib/game.rb'
3.0.0 :002 > require './lib/player.rb'
3.0.0 :003 > require './lib/computer.rb'
 => true
3.0.0 :004 > p1 = Player.new('John')
 => #<Player:0x000000012885c928 @name="John">
3.0.0 :005 > c1 = Computer.new('RPS Comp')
 => #<Computer:0x0000000128927c18 @name="RPS Comp">
3.0.0 :006 > game = Game.new(p1, c1)
 => #<Game:0x000000012c8dfc20 @player_1=#<Player:0x000000012885c928 @name="John">, @player...
3.0.0 :007 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: rock
 => :draw
3.0.0 :008 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: scissors
 => :win
3.0.0 :009 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: paper
 => :lose
```
In this sample code ```game.result``` prints out the Player/Computer choices in the terminal.  I have done this so that we can clearly see the computer's random choices, otherwise ```c1.weapon_select``` would remain hidden from us.  (We would still know the result, of course).  My final ```game.result``` code does not print out Player/Computer choices in the terminal.  It does not need to.  Instead Player/Computer choices are displayed on the '/result' webpages.

6. Simple webpage designs like ```.gifs``` were added.  While making these I wanted the '/result' webpage to display different images for wins, losses and draws.  But that seemed beyond my knowledge of Html and Java, so instead I created 3 different '/result' pages.  The 3 pages are nearly identical, but they have different pictures.  I know that repetitive code is not ideal, but it does serve my purpose here.

7. The Game result has 3 possible outcomes (:win, :lose, :draw).  After making 3 result ```.erb``` pages, I had this code in ```app.rb```:

```
get '/result' do
...
  if @result == :win
      erb :result_win
    elsif @result == :lose
      erb :result_loss
    else
      erb :result_draw
  end
end
```
Then I changed the names of my ```.erb``` pages to match the Game result symbols (:win, :lose, :draw).  My refactored ```app.rb``` is cleaner:

```
get '/result' do
...
  erb @result
end

```


8. Images

----
![rps1](https://imgur.com/nDcrpg5m.png) ![rps2](https://imgur.com/80lK0UNm.png) ![rps3](https://imgur.com/pFyQ5kWm.png)
----


**Improvements that are possible**:

* Some refactoring of code between P1 and P2.  (String to symbol conversions)
* Implement human 2 player option 
* Scorekeeping between P1 and P2
* Improve app.rb tests
* Incorporate better web coding so that 3 results pages (for wins, losses and draws) are not needed
