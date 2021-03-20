def enter_names_rps
  visit '/'
  fill_in 'player1', with: 'Gordon'
  fill_in 'player2', with: 'Caroline'
  choose('rps')
  click_button 'Submit'
end

def enter_names_rpsls
  visit '/'
  fill_in 'player1', with: 'Gordon'
  fill_in 'player2', with: 'Caroline'
  choose('rpsls')
  click_button 'Submit'
end

def enter_names_rps_computer
  visit '/'
  fill_in 'player1', with: 'Gordon'
  choose('rps')
  click_button 'Submit'
end

def enter_names_rpsls_computer
  visit '/'
  fill_in 'player1', with: 'Gordon'
  choose('rpsls')
  click_button 'Submit'
end
