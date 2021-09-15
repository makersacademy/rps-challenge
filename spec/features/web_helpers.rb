def get_to_game
  visit '/'
  fill_in :player, with: 'Bob'
  click_button 'Submit'
end