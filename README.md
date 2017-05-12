# RPS Challenge

#### Adam's Notes

* User stories covered (name is not 'in lights')
* Two player implemented
* Lizard and Spock included
* I have tried to add some graphical polish, but don't know enough
* Some methods are a bit long, 8-9 lines
* I think all classes/tests are isolated
* Don't know HTML style conventions, rubocop doesn't tell me about offences
* Uploaded to Heroku: https://serene-dusk-87883.herokuapp.com/

#### Loading

```sh
$ git clone git@github.com:adamjohnsnow/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
<img width="805" alt="screen shot 2017-04-30 at 11 50 29" src="https://cloud.githubusercontent.com/assets/24992029/25563784/4a130f6e-2d9b-11e7-9590-db65cee09bd7.png">

#### Playing the game

* For one-player version, enter one name
* For two-player version, enter both names
* Users can choose how long the game is by changing the best-of number, default is 5
* Users then select a move by clicking the images.
* If one-player, the next move will be randomised
* Players take turns until their score exceeds half of the best-of figure
