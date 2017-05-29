# Rock, Paper, Scissors
## Makers Academy Week 3 Weekend Challenge

![A picture](https://github.com/wemmm/rps-challenge/blob/master/hands.png)

### What it Does
A web app for playing Rock, Paper, Scissors.

### How to Use
1. Clone the directory to your machine.
2. Install the relevent gems using ```bundle install```
3. Navigate to the /app folder from the command line. 
4. Run the app with ```ruby app.rb```
5. Use a browser to go to localhost/4567 (or specified port)
5. Input name and choice, then submit.
6. You will be redirected to the outcome of the round.
7. Play another round by clicking ```play again?```
8. The game will keep track of your name, total wins, total losses and draws!
9. Maximum gaming enjoyment is now yours.


### My Approach
![A diagram](https://github.com/wemmm/rps-challenge/blob/master/plan.PNG)

### Additional Things
I had a really tough time setting up Sinatra and the structure for the web app! The more complex structure also caused me some issues with debugging, with one particularly annoying glitch taking me a full two hours to resolve. This had quite a major effect on my time management, so as of my pull request there's very little game logic in the code. It's a bank holiday tomorrow so I'm going to aim to get the game fully functional and possibly even looking good with a bit of CSS before Tuesday. 

I'm quite happy that I managed to 'kill the global variable' by using class instance variables, and even though I'm not entirely happy with my rate of progress, I am satisfied that I managed to overcome a lot of bugs and roadblocks over the weekend I spent working on this!

**BANK HOLIDAY UPDATE**: The game logic actually works now! The game can be played and replayed and even keeps a running total of all the results from the current instance. 
