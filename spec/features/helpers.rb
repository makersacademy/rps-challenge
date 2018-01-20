def submit_name
  visit '/'
  fill_in :player_name, with: 'Player'
  click_button 'Submit'
end
