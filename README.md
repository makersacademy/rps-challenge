# Rock Paper Scissors Challenge - Week 2 Makers
This is the weekend challenge for the Makers Academy for week 3. It is a simple, locally-hosted web app to play rock, paper, scissors against the computer.

## To install
- git clone "https://github.com/t-kellett/takeaway-challenge"
- run `bundle install` (assuming you have bundler installed, and a recent version of Ruby - this is build in Ruby 3.0.2)
- run `rackup`
- in your web browser, visit `http://localhost:[THE PORT OPENED IN YOUR TERMINAL]` e.g. 9292

## To play
1. Enter your name, click continue
2. Make your selection of rock, paper, or scissors using the emojis and click continue
3. You will see who has won along with a gif. This application ranomly selects the computer's choice when you make your choice and compares them using the classic rules of the game.

### Improvements to be made (mainly note to self, feel free to skip)
I sourced the CSS for the formatting from these sources:
- https://markheath.net/post/customize-radio-button-css (for how to customise radio buttons)
- https://codepen.io/stack-findover/pen/OJRvPQv for the general styling of the pages - I stripped out the animation and a lot of the formatting just to make it look a little cleaner.

On the styling, there is a lot of unnecessary CSS that I have not stripped out (the page functions, but has many unnecessary lines I could strip out). Would build the CSS from scratch.

My feature tests are pretty light. Unit testing is thorough to make up for this, but I struggled with accessing instance variables from within feature tests so there is basically no feature testing. Something to work on in week 4 of the course.

