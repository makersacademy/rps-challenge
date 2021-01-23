
# Domain Model
This is a domain model for the ruby elements of this challenge.
This time, I used the user stories to draw up this [sequence diagram](diagram.svg) and from that I drew up the list of [routes with interactions](#routes_with_interactions).
It is this list that guides the ruby objects, actions and properties I want to have.


## Routes with Interactions
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




## Intended Actions



## Nouns:
- Menu (implied)
- Dishes (implied list)
- Dish
- Dish Name (implied)
- Price
- Order
- Basket (implied)
- Total Price
- Text
- Phone Number (implied)
- Delivery Time (implied)
- Text Contents (implied)

## Actions:
- add dish to menu
- list dishes
- select dish from menu
- select price from menu
- add dish to order (implied)
- place order (implied)
- sum of dishes
- send text with expected delivery time


## Identifying Object Types

| Noun          | Owner of Properties or Property |
|---------------|---------------------------------|
| Menu          | Owner of Properties             |
| Dishes        | Property of Menu                |
| Dish          | Owner of Properties             |
| Price         | Property of Dish                |
| Name          | Property of Dish                |
| Order         | Owner of Properties             |
| Basket        | Property of Order               |
| Total_Price   | Property of Order               |
| Text          | Owner of Properties             |
| Delivery_Time | Property of Order               |
| Text_Contents | Property of Text                |
| Phone_Number  | Property of Text                |

## Identifying Action Owners

| Action        | Action Owner   |
|---------------|----------------|
| add_dish      | Menu           |
| list_dishes   | Menu           |
| select_dish   | Menu           |
| select_price  | Menu           |
| add_dish      | Order          |
| place_order   | Order          |
| check_total   | Order          |
| sum_of_dishes | Menu           |
| send_text     | Text           |

## Action Impacts

| Action        | Property it reads or changes  |
|-------------  |-------------------------------|
| add_dish      | changes - Menu.Dishes |
| list_dishes   | reads - Menu.Dishes |
| select_dish   | reads - Menu.Dishes |
| select_price  | reads - Menu.Dishes -> Dish.Price |
| add_to_basket | changes - Order.Basket |
| place_order   | changes - Order.Delivery_Time, Text.contents |
| send_text     | reads - Text.Text_Contents, Text.Phone_Number|

## Classes with Actions & Properties

| Class      | Properties | Actions |
|------------|------------|---------|
| Menu       | Dishes     | select_dish, add_dish, list_dishes, select_price  |

| Class      | Properties | Actions |
|------------|------------|---------|
| Dish       | Price, Name           |         |

| Class      | Properties | Actions |
|------------|------------|---------|
| Order      | Total_Price, Delivery_Time  | add_to_basket, place_order  |

| Class      | Properties | Actions |
|------------|------------|---------|
| Text       | Contents           | send_delivery_expected        |
