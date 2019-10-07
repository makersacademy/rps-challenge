def single_sign_in
  visit('/')
  click_button 'Single Player'
end

def multi_sign_in_and_play
  visit('/')
  click_button 'Multiplayer'
  fill_in :player1, with: "Player1"
  fill_in :player2, with: "Player2"
  click_button 'Submit'
end

def single_sign_in_and_play
  visit('/')
  click_button 'Single Player'
  fill_in :name, with: "Player1"
  click_button 'Submit'
end
