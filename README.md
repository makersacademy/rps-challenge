```
________  ________  ________           ________  ___  ___  ________  ___       ___       _______   ________   ________  _______      
|\   __  \|\   __  \|\   ____\         |\   ____\|\  \|\  \|\   __  \|\  \     |\  \     |\  ___ \ |\   ___  \|\   ____\|\  ___ \     
\ \  \|\  \ \  \|\  \ \  \___|_        \ \  \___|\ \  \\\  \ \  \|\  \ \  \    \ \  \    \ \   __/|\ \  \\ \  \ \  \___|\ \   __/|    
 \ \   _  _\ \   ____\ \_____  \        \ \  \    \ \   __  \ \   __  \ \  \    \ \  \    \ \  \_|/_\ \  \\ \  \ \  \  __\ \  \_|/__  
  \ \  \\  \\ \  \___|\|____|\  \        \ \  \____\ \  \ \  \ \  \ \  \ \  \____\ \  \____\ \  \_|\ \ \  \\ \  \ \  \|\  \ \  \_|\ \ 
   \ \__\\ _\\ \__\     ____\_\  \        \ \_______\ \__\ \__\ \__\ \__\ \_______\ \_______\ \_______\ \__\\ \__\ \_______\ \_______\
    \|__|\|__|\|__|    |\_________\        \|_______|\|__|\|__|\|__|\|__|\|_______|\|_______|\|_______|\|__| \|__|\|_______|\|_______|
                       \|_________|                                                                                                   
     
                                                ┌──┬──┬──┬──┐   ┌──┐┌──┐
                                                │  │  │  │  │    │  ││  │
                        ┌───┬──────┬───┐       │  │  │  │  │    │  ││  │
                        │   │   │   │   │       │  │  │  │  │    │  ││  │        
                        │   │   │   │   │    ┌─╴│  ╵  ╵  ╵  │    ╵  └┘  ┴───────┐
                       ┌┼───┴─┐ ╵   ╵   │    │  │           │     ╷      │   │  │
                       ││     │          │    │  │           │     ├─────┐╵   ╵  │
                       └─────┘          │    │  ╵           │     └─────┘       │
                        │                │    │              │      ╵╷           │
                        │                │    │              │       │           │
                        ┴───────────────┘   └──────────────┘      ┴───────────┘
```                                     
RPS challenge is a program run in REPL. It is a web app that allows a player to play rock, paper, scissors against the computer. Reference has been made to the following repository: [RPS-Challenge](https://github.com/amyj0rdan/rps-challenge)

[See here](https://github.com/makersacademy/rps-challenge) for Makers' original repo.

### Getting started
```
Fork or clone this repo:      
`git clone git@github.com:arthurashman/rps-challenge.git`    
`gem install bundle`     
`bundle`     
```
### Usage

Run server 
`
ruby app.rb
`
or
`
rackup
`

### Testing

`rspec`

## User stories

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Approach

Taking direction from the user stories, broke down the problem into feature tests and used these to build using TDD. For each feature test, I tried to break out smaller unit tests.

