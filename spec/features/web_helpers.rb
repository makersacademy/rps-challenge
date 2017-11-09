@@welcome_messages = ["Welcome to Rock, Paper, Scissors",
                      "Did I hear Linguini?",
                      "Please enter your name",
                      "Don't worry if you are a bot.",
                      "No need to make up a silly name, just use your regular devilish sounding one - we don't usually discriminate."]

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
  click_button('Again')
end
