def log_info
  visit '/'
  fill_in 'player1', with: 'Claudia'
  click_button 'Play'
end
