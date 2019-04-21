def register_and_play
  visit '/'
  fill_in 'player_one', with: 'Ayelisha'
  fill_in 'player_two', with: 'Elliott'
  click_button 'Submit'
end
