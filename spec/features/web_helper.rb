
def single_player_name
  visit '/'
  click_button 'singleplayer'
  fill_in 'name', with: 'Dwayne Johnson'
  click_button 'submit'
end
