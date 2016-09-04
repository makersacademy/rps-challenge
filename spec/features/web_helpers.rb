
def enter_name_and_choice
  visit "/"
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rock')
  click_button 'Submit'
end



def lawrence_wins
  visit "/"
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rock')
  fill_in(:player_2_name, with: 'Computer')
  fill_in(:player_2_choice, with: 'scissors')
  click_button 'Submit'
end
