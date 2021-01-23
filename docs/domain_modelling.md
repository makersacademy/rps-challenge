
# Domain Model
This is a domain model for the ruby elements of this challenge.
Rather than using the user stories, which display the interactio of the user, I'll write
out how I want the ruby parts to work myself.

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
