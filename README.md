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

Specific questions for code review:
* is the code well structured, e.g. does each class have just one responsibility?
* are messages being sent around the programme in a reasonable way, e.g. between the player of the game and the game instance, and between the classes within the programme
* should more of the methods in the game be made private?
* the test coverage is high - but are the tests written in a way that is too inflexible, or vulnerable to changes in the code? If so, what strategies should I be looking at adopting?  
