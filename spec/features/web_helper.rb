
def single_player_name
  visit '/'
  click_button 'Single Player'
  fill_in 'name', with: 'Dwayne Johnson'
  click_button 'submit'
end

def two_player_game
  visit '/'
  click_button 'Two Player'
  fill_in 'name1', with: 'Bugs Bunny'
  fill_in 'name2', with: 'Daffy Duck'
  click_button 'Submit'
end
