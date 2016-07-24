def register_and_play
  visit "/"
  fill_in 'player_name', with: 'Karol'
  click_button 'Submit'
end
