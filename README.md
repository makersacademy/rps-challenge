# RPS Challenge

This is my attempt at the Makers Academy [Week 3 Weekend Challenge](https://github.com/makersacademy/rps-challenge).

## Note to reviewer
I have not carried out the bonus challenges, so that game is one-player game against the computer which uses a random weapon.

I recognise that in the controller ```app.rb``` there is a global variable for the instance of the ```Game``` class, however, this is required as each ```get``` and ```post``` request does not recognise variables from previous ```get``` and ```post``` requests.

## Approach
I used a TDD approach to solving this challenge. I first wrote feature tests in the ```spec/features/user_stories.rb``` file and then, when a Model file was required for new classes, e.g. the ```Game``` class, then I created user tests for those classes.  
