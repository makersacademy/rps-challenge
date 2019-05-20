def register_and_play
  visit ('/')
  fill_in :player_name, with: 'Bob'
  click_button 'Register'
end
