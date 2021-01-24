
# Domain Model
This is a domain model for this challenge. I used the user stories to draw up this [sequence diagram](diagram.svg) and from that I drew up the list of [routes with interactions](#routes_with_interactions).
It is this list that guides the ruby objects, actions and properties I want to have.


Routes with Interactions
------
Based on [sequence diagram](diagram.svg)  
#### 'GET /'   
- Home page
- index.erb
  - only needs to load form, no embedded RUBY needed
  - includes name form
    - POSTs to /new-game
    - player name is output

#### 'POST /new-game'  
- Sets up new game
- Not seen by user
- new_game.erb
  - creates new Player object for user (from instance variable set to given name)
  - creates new Player object for computer (from instance variable set to 'Computer')
  - calls Game.new with player objects as input
- redirect to '/play'

#### 'GET /play'  
- Game page
- play.erb
  - Three buttons/form buttons
    - One each for rock, paper, scissors
    - All post to '/action'
    - Choice is output  

#### 'POST /action'  
- Runs game
- Not seen by user
- action.erb
  - calls game.play with user selection
      - calls pick_specified on human player
        - sets choice attribute of human player
      - calls pick_random on computer player
        - sets choice attribute of computer player
- redirect to '/result'

#### 'GET /result'
- Results page
- results.erb
  - Displays names and choices for human & computer player
    - Based on game.player_1/2 objects
  - Displays message saying who won
    - Based on game.player_1/2 object




Ruby Structure
-------


### Nouns:
- Game
- Player
- Choice
- Choice options
- Name
- Player 1
- Player 2
- Result

### Actions:
- create new game
- create new player
- play game
- pick random choice
- pick specified choice


### Identifying Object Types

| Noun          | Owner of Properties or Property |
|---------------|---------------------------------|
| Game          | Owner of Properties             |
| Player 1/2    | Properties of Game              |
| Result    | Property of Game              |
| Player        | Owner of Properties                |
| Choice          | Property of Player             |
| Choice Options         | Property of Player             |
| Name          | Property of Player                |

### Identifying Action Owners

| Action        | Action Owner   |
|---------------|----------------|
| Game.initialize(player_1, player_2)      | Game           |
| play(choice)      | Game           |
| Player.initialize(player_name)   | Player           |
| pick_random   | Player           |
| pick_specified   | Player           |

### Action Impacts

| Action        | Property it reads or changes  |
|-------------  |-------------------------------|
| Game.initialize      | changes - player_1, player_2 |
| play      | changes - player_1, player_2 -> choice, result |
| Player.initialize   | changes - name |
| pick_random   | changes - choice |
| pick_specified  | changes - choice |

### Classes with Actions & Properties

| Class      | Properties | Actions |
|------------|------------|---------|
| Game       | player_1, player_2, result     | initialize, play  |

| Class      | Properties | Actions |
|------------|------------|---------|
| Player       | name, choice, choice_options  | pick_random, pick_specified  |
