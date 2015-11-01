Rock, Paper, Scissors
======================

Challenge
---------
This is the web application I submitted for my third weekend challenge at Maker's Academy. The challenge was simple: create a Rock, Paper, Scissors game using the basic web skills I learned over the week.

Here are the user stories I followed:


```
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Approach
--------
My main aim was to consolidate what I had learned over the week; the client/server relationship, ERB and frameworks like Sinatra were all new to me. I wanted the game to be easy to run and play.

I used Ruby and HTML to create a simple program that allows the user to enter his or her name and then presents a choice between rock, paper or scissors. The computer will also choose (via a random number generator) and a winner will be declared. The user can then click a button to play another round.

Here are some notes:

* The essential elements of the game are handled via a Game class; this allows for relatively skinny controller and views files.
* A global variable was used to reference the Game class within the app.rb file - the only reason for this is that I have not yet learned to use databases effectively (this should be handled in Week 4). I am aware that global variables are a bad code smell and should never be used normally.
* ERB is used to render the pages. These files are located within the `./views` folder.

Setup
-----
1. Fork this repository and then clone it using `git clone <url>`
2. cd to the project's root folder, run `gem install bundle` and then run `bundle`
3. Host the app locally using Sinatra by running `ruby app.rb` - note the port number (e.g. 4567)
4. In your browser, visit `localhost:<port number>`

Have fun and use the game to settle any lingering arguments!
