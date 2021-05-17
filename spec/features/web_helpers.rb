def register_and_play
  visit('/')
  fill_in :player_name, with: 'Toby'
  click_button 'Submit'
end
