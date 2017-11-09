@@welcome_messages = ["Welcome to Rock, Paper, Scissors",
                      "Did I hear Linguini?",
                      "Please enter your name",
                      "Don't worry if you are a bot.",
                      "No need to make up a silly name, just use your regular devilish sounding one - we don't usually discriminate."]

def sign_in
  @name = 'Ricky Martin'
  visit('/')
  fill_in 'player_name', with: @name
end

def play
  click_button 'Play'
end

def sign_in_and_play
  sign_in
  play
end
