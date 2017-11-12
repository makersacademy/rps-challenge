@@welcome_messages = ["Welcome to Rock, Paper, Scissors",
                      "Please enter your name"]

def enter
  @name = 'Messi'
  visit('/')
  fill_in 'player_name', with: @name
end

def sign_in
  click_button 'Play'
end

def play
  page.choose('rock')
  click_button('Go')
end

def play_again
  click_button('Play Again')
end

def restart
  click_button('Restart')
end
