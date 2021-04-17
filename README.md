
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
| Noun    |	Property/owner? |
|---------|-----------------|
| Player  |	owner           |
| Name    |	property        |
| Game    |	                |

| Actions  |	owned by? | What it changes |
|----------|------------|-----------------|
| Register |	player    |	@name           |
| Play     |	player    |	@choice         |

| Class      |	Player                   |
| Properties |	name, choice             |
| Actions    | 	register name, play game |

* I could make the opponent a class, but this only seems necessary if I make the game more complex (like introducing a ‘win tally’ attribute). Otherwise, I can reduce the opponent to a win/lose/draw message.

Page setup: 5 views.

Name input links to choice-input, which flows to one of three outcomes: win, lose or draw.

						—>	[win	  ]
[name] —> 	[choice]		—>	[lose	  ]
						—>	[draw ]
