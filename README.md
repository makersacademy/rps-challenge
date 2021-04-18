
## USER STORIES ##
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## PAGE SETUP ##

3 views:
(name) --> (choose) --> (result)

## DOMAIN MODEL TEMPLATE ##


* IMPORTANT: instead of storing player and AI choices in an instance variable, I decided to store them in the sessions object. This makes the player classes very sparse.

* This choice kind of emerged as I built the site, it didn't seem crucial to make any extra variables.

| Template   | details                   |
|------------|---------------------------|
| Class      |	Player                   |
| Properties |	name                     |
| Methods    | 	n/a                      |

| Template   | details                   |
|------------|---------------------------|
| Class      |	AI                       |
| Properties |	choice (rand @ creation) |
|  Methods   | 	n/a                      |


* I also decided later to make a Judge class to handle who the winner is, because my rspec knowledge is very class-based.

| Template   | details                   |
|------------|---------------------------|
| Class      |	Judge                    |
| Properties |	n/a                      |
| Actions    | 	declare_winner           |
