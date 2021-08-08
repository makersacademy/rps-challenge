# RPS Challenge - Chuka Okoye-Ahaneku
==================

## My Approach
* First user story completed, 100% coverage and passes RSpec feature test. 2nd user story not completed.
* I created multiple paths but struggled to combine the computer logic through links, the idea was the 'Rock, Paper, Scissors' links to be the players input and go against the computers randomisation, and another method for the outcome to be displayed whether the player won or lost.
* COVERAGE: 100.00%
* All test passing

## User story sequence diagram:
![Imgur](https://i.imgur.com/n6wyVhv.png)

## Game screenshots
-Add name to home screen
![Imgur](https://i.imgur.com/4G7ygFK.png)

-Name is recognised and welcomed
![Imgur](https://i.imgur.com/s23fucZ.png)

-Clicking 'Scissors' leads to losing as computer chose 'Rock'
![Imgur](https://i.imgur.com/EFrgPSj.png)


## How to run in terminal:
```
git clone https://github.com/coo990/rps-challenge.git
cd rps-challenge
ruby app.rb # to activate
rackup # to run localhost server
```

## How to run test:
```
cd rps-challenge
rspec spec/features
```