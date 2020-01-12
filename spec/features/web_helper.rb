def log_in
  visit '/'
  fill_in 'name', with: 'Umberto'
  click_button 'Submit'
end