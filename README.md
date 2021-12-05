
How to run
-------
```sh
$ git clone https://github.com/AlfonsoGhislieri/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

Model
-----

I decided to keep it simple and focused on writing clean code for the basic Rock Paper Scissors game. However, I made sure that if I were to add any modifications these would not be hard to implement. For example, adding Lizard and Spock would only require changing one constant (`MATCHUPS` inside of the game class). The rest of the code would remain fully functional.

I broke down the challenge into 3 classes. 
- The `player` class stores the player information, `name` and `choice` (RPS). 
- The `computer` class when initialized will randomly choose from RPS and stores it in `choice`.
- `player` annd `computer` are then injected into the `game` class which takes care of determining the outcome through the `result` method.
   - In order to determine the result I chose to use a hash. Each key - value pair determines which choice loses to another. Eg. { :Paper => :Scissors }
   - Symbols were chosen in order to not waste any memory and allow searching for the values to be faster.

View
----
Once again I decided to keep it simple here too. The home page gives the user a field to type his name and a dropdown menu to select from RPS. This makes it easy to add any options in the future if desired (Lizard & Spock).

Each result will redirect to the appropriate page where the outcome is displayed and the user can click a button to go back to the homepage.

I chose to not beautify the page using CSS, but this could also be added in the future.

Controller
----

I wanted to keep a very skinny controller. `/result` route:
- Initializes an instance of the `Player` class injecting it with the parameters obtained in the form in the homepage.
- Creates a new instance of the `Computer` class
- Injects both of the classes above into a new instance of the `Game` class and uses the result of the `result` method to redirect to the approriate page to show the result to the user.







