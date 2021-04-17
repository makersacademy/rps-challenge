
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
| Noun    |	Property/owner? |
|---------|---------------------|
| Player  |	owner           |
| Name    |	property        |
| Game    |	n/a - implicit  |

| Actions  |	owned by? | What it changes     |
|----------|------------|---------------------|
| Register |	player    |	@name           |
| Play     |	player    |	@choice         |

| Template   | details                   |
|------------|---------------------------|
| Class      |	Player                   |
| Properties |	name, choice             |
| Actions    | 	register name, play game |


* I could make the AI opponent a class, but this only seems necessary if I make the game more complex (like introducing a ‘win tally’ attribute). Otherwise, I can reduce the opponent to a win/lose/draw message.
* I want to try storing the winner in the Session object and accessing it on the 'winner' page.

Page setup: 5 views.

Name input links to choice-input, to fin page (which shows winner).
(name) --> (choice) --> (fin)
