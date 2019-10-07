def start_rps
  visit '/'
  fill_in 'name', with: 'Andy'
  click_button 'Submit'
  click_button 'Rock Paper Scissors'
end
