Instructions
-------

The Rock-Paper-Scissors challenge was issued by Makers Academy at the end of week 3, as our weekend challenge. The aim of this challenge is to build a Rock, Paper, Scissors game using a Sinatra Server. The User Stories are as follows:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

How to use the Program
-------

Once the repo has been cloned, you should first install and run bundle to install all gems in the gem file needed for the program to function correctly.

```
$ bundler install
$ bundle
```

To start the Server run the Rackup command.

```
$ rackup
```

The website will be served on http://localhost:9292. To run the rspec test suit simply run the 'rspec' command in the command line from the root folder.

```
$ rspec
```

You will be greeted by a start screen where you will need to enter your name:


<kbd>
![Alt text](/images/1.jpg?raw=true "Optional Title")
</kbd>

Then you will get a welcome message, and will need to click on the "Begin Game" button:


<kbd>
![Alt text](/images/2.jpg?raw=true "Optional Title")
</kbd>


Here you will need to select your weapon:


<kbd>
![Alt text](/images/3.jpg?raw=true "Optional Title")
</kbd>


Finally, you will get a confirmation message for your weapon choice, as well as your opponent's weapon.  From here, a winner will be declared.  Click on 'New Game' to restart the game:


<kbd>
![Alt text](/images/4.jpg?raw=true "Optional Title")
</kbd>


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


How I Tackled the Challenge
-------

Since the very first day, Makers Academy has emphasised the importance of Test Driven Development, and this is the methodology I used when writing this program.  All code was written after the relevant test was written, with the expectation that the test would be failing until the code had been implemented.  If a test was failing for any other reason (i.e. syntax errors), I would go back and correct it until I was satisfied that the error message was outputting what I expected.

I began this challenge with the controller file (app.rb).  As always, a (feature) test was written first, and once I was satisfied with the way the interface was coming together and outputting what I wanted, I moved onto the classes.  I was originally using sessions to keep the player names in scope during the request/response, and going forward, I did ponder for a while how I would go about storing information from one method to another.  Global Variables are a big no no, so I eventually decided to go for class methods.  Having not covered this before, I spent some time reading up on them and testing the functionality to give me a better idea of how to implement them in my code.

The classes, much like the controller file, were written with tests first, and an expectation on why they were failing and how I was going to go about implementing the code to make them pass.  I initially had three classes, the RPS(Rock Paper Scissors) class, Player and Opponent, and these were all written using class methods.  However, I eventually removed the class methods from two of them, and only kept it for the RPS class.  This was sufficient to carry the player name information over and also hold the other information I needed (player weapon choice and opponent weapon choice) after those classes were initiated within the RPS class.  This was a satisfactory solution.

Another decision which I made was in regards to how the winner will be calculated.  My original implementation was an “if” statement, but I quickly realised that this would be a messy, cumbersome solution which would also violate the DRY rule.  This is another section where I pondered for a while, and eventually decided to use a Constant.  This Constant will hold a hash of the winning combinations and, using this, I could have a much simpler and elegant “if” statement evaluating whether certain conditions were true which would then calculate the winner.

Moving back to the front end, I originally had a separate .erb file for each player weapon selection which would be accessed depending on which one they chose.  I later decided it would become cumbersome doing it this way, and instead just used a “winner,” “loser” and “tie” .erb file instead.   The program will redirect to one of these dependant on the result after the opponent had picked a move.

Finally, after I was happy with the functionality and the way the program was working, I began refactoring.  An example of this was splitting up a longer method into two methods in the RPS class.  The method in question was “outcome,” which evaluates the end result.  Originally the opponent’s move was calculated by calling the .sample method on an array., however, with the way my program was now set up, calling the outcome method in the RPS class would give me the result of this .sample method from the Opponent class which could then be passed to the new “evaluate_result” method.  This made the code much more concise and clearer to see how the the winner was being calculated.  I also made sure these calculations for both the back end and front end were done in private methods, as all we were concerned about is the end result.  Further changes made at this point were visual changes to the way the text was being displayed during the game.

Struggles
-------

Even though I was fairly satisfied with my approach in this challenge, and made to sure to have a plan beforehand and write my test before implementing the code, there were a few times where following this methodology became difficult.  An example of this were the times I was making changes in my code (such as redoing the winner calculations) or implementing a different function, which would then cause lots of failing tests.  While I did try to go through each individual test one by one to fix them, there were the odd occasion where I made small edits to my code before changing or correcting the test.

If I had more time..
-------

If I had more time, I would have liked to have made the visual interface more fluid and attractive.  While I did make some small changes to it in the end, I feel there wasn't enough time to really make it look and function the way I envisaged given most of my time was spent getting the program to function correctly, which was the priority.  Given I hadn't ever used HTML before, I feel there is a vast wealth of features I could have used to do some really cool things with the visual side of my program.

Similarily, I would have also liked to have had the time to research and learn about implementing more dynamic web pages, which could display visual changes without having to reload the page.  I also would have spent more time refactoring my tests further than I have already done.
