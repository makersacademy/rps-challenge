def register
  visit('/')
  fill_in(:player_1_name, with: 'Alex')
  click_button 'Register'
end 

def register_play
  visit('/')
  fill_in(:player_1_name, with: 'Alex')
  click_button 'Register'
  click_button 'Play'
end
