def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Fred'
  click_button 'May the battle commence!'
end
