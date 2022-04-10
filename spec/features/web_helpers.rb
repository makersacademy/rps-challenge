def sign_in_and_play
  visit('/')
  fill_in 'Player name', with: "Michael"
  click_button 'Submit'
end

def multiplayer
  visit('/')
  fill_in 'Player name', with: "Michael"
  fill_in 'Player 2 name', with: "Michael 2"
  click_button 'Submit'
end
