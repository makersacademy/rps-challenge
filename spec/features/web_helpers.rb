def log_in
  visit '/'
  fill_in :player_1_name, with: 'Sal'
  click_button 'Submit'
end
