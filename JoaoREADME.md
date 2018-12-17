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

4. If you'd like to see the tests themselves cd to

```
cd ./spec/features
```
or 

cd ./spec/unit_tests

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

SCREENSHOT

6. Type your choice of 'Rock' 'Paper' or 'Scissors' (always using an uppercase letter at the beginning) and press the 'Submit' button

SCREENSHOT

7. You'll then see the computer's choice at the same time as the result of the game, which in this case was a draw

SCREENSHOT

8. To play again, simply revisit the 'local-host:9292' site



Design approach (+ for next time)
-------


























