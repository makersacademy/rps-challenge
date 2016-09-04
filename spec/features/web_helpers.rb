
def enter_name_and_choice
  visit "/"
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rocks')
  click_button 'Submit'
end
