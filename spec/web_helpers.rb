def player1_sign_in
  visit('/')
  fill_in :player1_name, with: "Marketeer 1"
  click_button 'Play'
end

def player1_picks_rock
  click_button 'rock'
end
