#Rock, paper, scissors!

## Website
### '/'
- Big logo
- Enter username (login button)
- 'Play' button

### '/rps'
- Allows the user to choose rock, paper, or scissors
- Big buttons for each? Garish gif.
  - Goes to /winner when clicked

### '/winner'
- Displays 'username' wins || username loses 
  - depending on the outcome



## Backend
### 'User' class
- Name variable
- method: new_game
  - Initialises a new_game in the RPS class

### 'Rps' class

- init w/
  - @user_input = ""
  - @bot_choice = [r,p,s].sample <-- tbc method?

- method: shake(user_input)
  - passes the user input from the website of the choice r,p,s to an instance variable  
- 

- method: winner
  - case selection if type statements.

private
- method: bot_choice
  - [r,p,s].sample