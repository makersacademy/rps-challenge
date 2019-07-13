### Rock Paper Scissors challenge ###

## Application Summary ##
This is a simple webapp that allows a user to enter their name, and make a selection of weapon to use in a simulated rock, paper scissors match. For some added complexity I added the Spock and Lizard options to the game and multiplayer logic is not enabled, but built in.
Rather than creating an app that only allowed the player to choose a weapon and to react to that choice, it seemed more logical to instantiate another player class and give it a randomised weapon and the name 'Computer'. In the testing environment this required that I seed the random generator to fix the outcomes and test those scenario's, which was a handy lesson as I'm now across that scenario and can use it to write better tests.
I've not bothered to style the app using CSS, I've done this in years past and given that it's unlikely i'll find myself looking for work as a UX Designer i'm concerning myself less with the styling.

## What I learned ##
- Using the model to handle data and decision making
- Why skinny controllers are important
- Isolating the tests
- Don't ever think you're smarter than tests, you aren't.
- Rubbish tests mean rubbish code
- Seeding random numbers for testing purposes using SRAND.

## Left to complete ##
- I won't be returning to this project I would say, however I could definitely stand to refactor quite a lot more than I have here.
- I could handle the logic on win lose more succinctly, but again for a project like this the implementation is easy to read and efficient enough to not warrant a further look in from me.
- It currently looks only marginally more appealing than a console/terminal version of the app - i.e I've not styled a single element.
