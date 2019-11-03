# RPS Challenge

```

 _______                   __                              
|_   __ \                 [  |  _                          
  | |__) |   .--.   .---.  | | / ]                         
  |  __ /  / .'`\ \/ /'`\] | '' <                          
 _| |  \ \_| \__. || \__.  | |`\ \                         
|____| |___|'.__.' '.___.'[__|  \_]                        
                                                           
 _______                                                   
|_   __ \                                                  
  | |__) |,--.  _ .--.   .---.  _ .--.                     
  |  ___/`'_\ :[ '/'`\ \/ /__\\[ `/'`\]                    
 _| |_   // | |,| \__/ || \__., | |                        
|_____|  \'-;__/| ;.__/  '.__.'[___]                       
               [__|                                        
  ______           _                                       
.' ____ \         (_)                                      
| (___ \_| .---.  __   .--.   .--.   .--.   _ .--.  .--.   
 _.____`. / /'`\][  | ( (`\] ( (`\]/ .'`\ \[ `/'`\]( (`\]  
| \____) || \__.  | |  `'.'.  `'.'.| \__. | | |     `'.'.  
 \______.''.___.'[___][\__) )[\__) )'.__.' [___]   [\__) ) 
                                                           

```
## Setup instructions

To install and run:

```
$ git clone
$ cd rps-challenge
$ bundle
$ rackup
```

Then in your browser visit:   
```
localhost:9292
```



## User stories

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Complete model

![alt text](https://github.com/jonesandy/learning-goals/blob/master/week3/_imgs/rps-1.png "Input name")    
![alt text](https://github.com/jonesandy/learning-goals/blob/master/week3/_imgs/rps-2.png "Show name")    
![alt text](https://github.com/jonesandy/learning-goals/blob/master/week3/_imgs/rps-3.png "Select weapon")    
![alt text](https://github.com/jonesandy/learning-goals/blob/master/week3/_imgs/rps-4.png "Fight")    
![alt text](https://github.com/jonesandy/learning-goals/blob/master/week3/_imgs/rps-5.png "Outcome")    

## My approach

I began by domain modelling which objects I wanted to include in my program. I wanted to make sure I kept the players seperate in their own classes of Player and Computer. This would mean I could inject another player class if I wanted to iterate and make it a two player game. It would not be hard coded to always play against a computer.

