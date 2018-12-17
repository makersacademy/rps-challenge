\\\

                                                                                                                      
                                @@@@@@@@@        @@@@@@@       *@@@@@@@     ,@@@    @@@@                               
                                @@@&   @@@@    @@@(   @@@@    @@@.   @@@@   ,@@@  @@@@                                 
                                @@@&   @@@@    @@@(   @@@@    @@@.          ,@@@@@@@                                   
                                @@@@@@@@@      @@@(   @@@@    @@@.          ,@@@@@@@                                   
                                @@@& #@        @@@(   @@@@    @@@.   @@@@   ,@@@  @@@@                                 
                                @@@&   @@@@      @@@@@@@       *@@@@@@@     ,@@@    @@@@                               
                        %@@@@@@@@@       @@@@@@@@     @@@@@@@@@#     @@@@@@@@@@@    @@@@@@@@@                          
                        %@@@    @@@&   @@    @@@@@(   @@@@    @@@.   @@@@           @@@@   %@@@                        
                        %@@@    @@@&   @@    @@@@@(   @@@@    @@@.   @@@@@@@@@.     @@@@   %@@@                        
                        %@@@@@@@@@     @@@@@@@@@@@(   @@@@@@@@@#     @@@@           @@@@@@@@@                          
                        %@@@           @@    @@@@@(   @@@@           @@@@           @@@@ .@,                           
                        %@@@           @@    @@@@@(   @@@@           @@@@@@@@@@@    @@@@   %@@@                        
    @@@@@@@.       @@@@@@@        @@@@@@@        @@@@@@@       *@@@@@@@       &@@@@@@@     %@@@@@@@@@       @@@@@@@@   
  @@@@           @@@&   %@@@       .@@@        @@@(           @@@.          ,@@@    @@@@   %@@@    @@@&   @@@@         
    @@@@@@@.     @@@&              .@@@          @@@@@@@       *@@@@@@@     ,@@@    @@@@   %@@@    @@@&     @@@@@@@@   
       .@@@@@    @@@&              .@@@             @@@@@@         @@@@@@   ,@@@    @@@@   %@@@@@@@@@           @@@@@( 
  @@   .@@@@@    @@@&   %@@@       .@@@        @@   @@@@@@    @#   @@@@@@   ,@@@    @@@@   %@@@  @@       @@    @@@@@( 
    @@@@@@@.       @@@@@@@        @@@@@@@        @@@@@@@       *@@@@@@@       &@@@@@@@     %@@@    @@@&     @@@@@@@@   
                                                                                                                       

\\\

                                                ,,,***////*////((((#((((///**,,
                                               */(((((((((((((((((((((/***,,   
                                              *//*/(//////(((((((((///**,.     
                                             /*,,*(#((/(/(((((((//***,,        
                                          .,,*/((###((((((/((//****,,          
                                    .,*//////(((#(/**//(/((//***,,,            
                              .,*****/((((((,  ((***(#(///***,,,.              
                           .,*/(((//***.       ,**//***,......                 
                            ,..              **///*,.                          
                                          ,*/((/*,                             
                                        ,*/(/**.                               
                  .,                 ,*(((*,.                                  
             .,,**//#(*.          . ,///,                                      
          .,****////*,*//(.        .,           ,,         ,.                  
        ,,*****//////(((#(/              .       //*.      /,.                 
       ,****//(((((((((/***/(/           ...      //(,     ///,                
    .,**/////(((////////(((((**          ,*//,     ///,.    (/,                
,***/////((//(/(((((((((#((((##(          ,///,.    ((/*,   #(/.               
//(((((((((((((#(######((((((/(#(           **//*.   #(((,  .%//.              
(((################((((((((((/*,,  ,.,       **((/,   ##(*,  ##/,              
((###(######(((((////(((///*,,.     .///*      */(/*,  %%(/,,#%%/,             
(#(((##(((/**//////////**,,..*,      .,(//*/     **/**,/#%%/,,*/(*,.           
(((//**,,,,,,,,,,,*,,,,,...*,.          .*/////    **/**,**(#////*/,.          
*,,,,,,.....,,,,,,........,.              .,(////(%%(///(#/////////*,,.        
.                  .......                   ,,*//(//(#(((((((//(///*,,.       
                                                .,*/((((((((((((((////,,.      
                                                  .,**/(((((#((/(((/(//,,      
                                                    .*//**/((#((((/////**,     
                                                     .*////////(((((//(/*,,.   
                                         .*,*(/*,   ..,**/////////((((((///*,  
                                           .,*//(((((/*,**////****//((((((/**,,
\\\



Rock! Paper! Scissors! (RPS)
-------
This is a simple program that allows you to play Rock, Paper, Scissors against a computer. You enter your name and choice as indicated in the instructions below, the computer makes a random choice and you see the outcome of the game - win, lose or draw.

Eat your heart out, Candy Crush.

_Rules_

* Rock beats Scissors
* Scissors beats Paper
* Paper beats Rock


Download & Install Instructions
-------
1. Fork this repo onto your local machine: https://github.com/joaoag/rps-challenge (for instructions on how to fork a repo see here: https://help.github.com/articles/fork-a-repo/)
2. Open the Terminal.app
3. In terminal, Use the change directory ('cd') command to navigate into the folder where you have downloaded the repo e.g.
```
cd ./Projects/web/rps-challenge
```
4. In terminal, type
```
bundle install
```
Then press enter
5. This will install the files required to run RPS

System Requirements
-------

* Ruby 2.5.0
* Mac OS X
* Any modern web browser


Built with
-------

* Ruby
* Rack
* RSpec
* Capybara
* Selenium
* Sinatra
* Rubocop


How to run tests
-------

1. Make sure you are in the game's root directory. You can check this with using the below command, which should end on 'rps-challenge'
```
pwd /Users/your-name/projects/rps-challenge
```
2. Once you know you're in the root directory, type 
```
rspec
```
3. You will see the unit and feature test titles, contexts, coverage and whether they're passing

4. If you'd like to see the tests themselves, use cd as below

```
cd ./spec/features
```
or 
```
cd ./spec/unit_tests
```

The feature tests cover user stories through a series of actions and the unit tests cover each of the methods used in the Game, Computer and Player classes.

User Stories Covered
-------
```sh
As a marketeer
So that I can see my name
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


How to Play
-------

1. In terminal, go to 
`
cd rps-challenge/app
`

2. Type
`
rackup config.ru
`

3. You'll see something like this, take note of the the 'port=9292' on the final line, you may have a different number
`
[2018-12-17 07:23:33] INFO  WEBrick 1.4.2
[2018-12-17 07:23:33] INFO  ruby 2.5.0 (2017-12-25) [x86_64-darwin15]
[2018-12-17 07:23:33] INFO  WEBrick::HTTPServer#start: pid=2141 port=9292
`
4. Open your browser and in the address bar type 'local-host:9292' (or whichever port is specified after running rackup)

![RPS home page on on Chrome Browser](/screenshots/rps-address-bar.png?raw=true "RPS home page on on Chrome Browser")


5. Now type your name in the box and press the 'Submit' button

![RPS name entered](/screenshots/rps-name-entered.png?raw=true "RPS home page with name entered")

6. Type your choice of 'Rock' 'Paper' or 'Scissors' (always using an uppercase letter at the beginning) and press the 'Submit' button

![RPS entering choice](/screenshots/rps-entering-choice.png?raw=true "RPS home page with choice about to be entered")


7. You'll then see the computer's choice at the same time as the result of the game, which in this case was a draw

![RPS outcome](/screenshots/rps-outcome.png?raw=true "RPS outcome")

8. To play again, simply refresh the page using the 'local-host:9292' address



Design & approach
-------

_Back-end_

* The game uses three classes - Game, Player & Computer

* _Player_ class stores user input from browser for both name and weapon of choice. It sends the name variable to the play.erb file and the choice variable to the Game class

* _Computer_ class generates a random choice from an array of Rock, Paper or Scissors. The outcome of this is then sent to the Game class

* _Game_ compares what it has been sent by the Computer and Player messages, decides who has won based on the rules of Rock, Paper, Scissors and returns a message relevant to the outcome of the game that is displayed through the play.erb file


_Front-end_

* The game uses four routes - /, /names, /choice and /play

* _/_ On landing on the / page, the user sees the index.rb file, which gives them a field in which they can enter their name. On pressing the 'Submit' button, a post request is sent to /names for this information to be saved

* _/names_ This happens in /names by attributing the user input to a new instance of the Player class. To allow this to be accessed by other routes, this new instance is stored as a global (!!!) variable. At this point a new instance of the Computer class is also instantiated and assigned to another (!!!!!!) global variable. The user won't see this however, it will appear as if they've just been directed straightaway to /play

* _/play_  uses the play.erb file to hide the name entry field, instead displaying 'Player name: [entered name here]'. Now the user is able to enter their choice of Rock, Paper or Scissors. The outcome of this is sent to the Game class along with the Computer's random choice. Game class returns the outcome to be displayed


_Improvements_

* No use of global variables

* Seperated the Game class into two, one which compares Computer and PLayer choices to calculate result, one which displays the result

* Seperated the /play route into two, one page for user to enter input, one page to display outcome of the game

* Reducing length of the Game #compare method

* Getting CSS applied, game currently looks horrible























