# RPS Challenge #

The client request is to have a *Rock, paper, scissors* game that the user can play on the web.<br/>
The user has to be able to register his name before to play.<br/>
Then he has to be able to play the game against the computer.<br/>
Based on that I have decided to create 2 classes, and to have a path for each possibility that the player is having :

1. The class game, which is responsible of the 3 methods *rock*, *scissors*, *paper* that the user can choose.<br/>

2. The class computer which is responsible of the random choice of the computer between *Rock, paper, scissors*.<br/>

3. The paths are showing the result of the game, depending on the choice of the user.<br/>
Features tests are build for each.<br/>
View are created for each.<br/>

The tests for the 2 classes are passing as the features tests.<br/>

![test](https://user-images.githubusercontent.com/43742795/53308116-d584a280-3896-11e9-8ae7-969d43194387.png)

## Screen shots ## 

![rps1](https://user-images.githubusercontent.com/43742795/53307788-e7187b00-3893-11e9-90f0-3918fd0cd94e.png)

![rps_scissors](https://user-images.githubusercontent.com/43742795/53307789-e97ad500-3893-11e9-8608-a49798693c4c.png)  ![rps_paper](https://user-images.githubusercontent.com/43742795/53307792-ee3f8900-3893-11e9-9c19-490f96b8e2e6.png) ![rps_rock](https://user-images.githubusercontent.com/43742795/53307791-ebdd2f00-3893-11e9-88cb-95029c3425fb.png)

## How to use ##

1. clone the repo<br/>
Under the repo name click *clone or download*<br/>
Click on *use HTTPs*, copy the clone URL of the repo<br/>
In the terminal go on the working directory where you want the cloned directory to be<br/>
Use the `git clone` command and paste the clone URL then press enter :

```shell
$ git clone https://github.com/your-username/your-repositary.git
```

2. On your local machine go inside of the *rps-challenge* directory :

```shell
$ cd rps-challenge
```
3. To install all the *gems* contained in the *Gemfile*, install and run *Bundle* :
Install :

```shell
$ install bundle
```
Run:

```shell
$ bundle
```

4. You can see the differents directories, with the `ls` command.

5. Check that the codes are passing the test. You have to inside the root *rps-challenge* directory and to run the *spec*.<br/>
You can check all the files in one goal:

```shell
$ cd rps-challenge
$ rspec
```
You can check only one file at a time :

```shell
$ cd rps-challenge
$ rspec spec/file_name_spec.rb
```

7. Check that the code respect the quality of the *Rubocop* guideline, by running `rubocop` from the *rps-challenge* directory :

```shell
$ cd rps-challenge
$ rubocop
```

## Run the app ##

1. On the command line, from the root directory *rps-challenge*, use *rackup* followed by the *config.ru* file :

```shell
$ cd rps-challenge
$ rackup config.ru
```

You'll be able to see that the localhost port used is *9292*

2. Open your browser and type the url of your *localhost:9292*

3. Enter your name and submit.

4. Just play the game :smile:
