{{RPS Challenge}} Class Design Recipe
1. Describe the Problem
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

2. Design the Class Interface
Enter name before the game

Get shown a choice of Rock, Paper or Scissors

User can only choose 1 option

The game will choose make 1 other choice

Winner gets declared
  Rock beats Scissors
  Scissors beats Paper
  Paper beats Rock

MODELS
- Player
  - attr_reader :name
  - def make_choice
- Game (current_turn, )

VIEWS
- index
- play
  - Shows player 3 choices, buttons. 
- result
  - Shows the result of the game

CONTROLLER
- app.rb
  '/'
  '/play'
  '/result'

# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    # ...
  end

  def remind_me_to(task) # task is a string
    # No return value
  end

  def remind()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
end
3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.