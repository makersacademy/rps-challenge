def start_game
  visit '/'
  fill_in :player, with: 'Ben'
  click_button 'Submit'
end
