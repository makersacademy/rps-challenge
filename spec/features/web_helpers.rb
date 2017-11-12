def sign_up_start
  visit '/'
  fill_in :player_name, with: 'name'
  click_button 'Start'
end

def choose_rock
  fill_in :option, with: 'rock'
  click_button 'Enter'
end
