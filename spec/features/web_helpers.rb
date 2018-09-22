def log_info
  visit '/'
  fill_in 'player', with: 'Claudia'
  click_button 'Play'
end
