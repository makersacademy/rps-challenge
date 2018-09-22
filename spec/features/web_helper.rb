
def single_player_name
  visit '/'
  click_button 'Single Player'
  fill_in 'name', with: 'Dwayne Johnson'
  click_button 'submit'
end
