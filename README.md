# RPS Challenge

How to use
-------

Download repository and install dependencies with bundle. Run rackup on the command line and open localhost port 9292 in a browser to play.

Things yet to do:
* implement Spock and lizards
* implement multiplayer mode with duck typing

How it went
-------

I sketched out a sequence diagram to try to discover which messages needed to be sent around the programme, the better to figure out what the most appropriate objects would be to send those messages. With this in hand, I test-drove the creation of the classes I thought I needed: Game and Player. Before long I realised a new class would help: the Computer class, to provide an automated answer, so I redrew my sequence diagram and continued to build that. When I had finished a first draft of my business logic, I drew up some feature tests using Capybara, and started work on the controller logic that would pass those tests.

The main challenges were:
* figuring out how to structure the code - e.g. does each class have just one responsibility?
* how to communicate data between classes - e.g. best way of getting computer selection to the game player - and when to ensure they are made private
* making the controller logic comprehensible.

I would like to improve my understanding of how best to persist games between requests, and how best to access class instance variables and supply them to the erb files. I would also like to learn about ways to concatenate erb files (e.g. header, body, footers). I think a general discussion of the structure of my code would also be a great help.  
