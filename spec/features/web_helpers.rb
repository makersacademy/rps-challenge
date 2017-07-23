def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Fred'
  click_button 'May the battle commence!'
end

def choose_rock
  click_button 'Rock'
  click_button 'OK'
end
