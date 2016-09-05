
def enter_name_and_choice
  visit "/"
  click_button 'Singleplayer'
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rock')
  click_button 'Submit'
end



def lawrence_wins
  visit "/"
  click_button 'Multiplayer'
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rock')
  fill_in(:player_2_name, with: 'Computer')
  fill_in(:player_2_choice, with: 'scissors')
  click_button 'Submit'
end

def draw
  visit "/"
  click_button 'Multiplayer'
  fill_in(:player_1_name, with: 'Lawrence')
  fill_in(:player_1_choice, with: 'rock')
  fill_in(:player_2_name, with: 'Computer')
  fill_in(:player_2_choice, with: 'rock')
  click_button 'Submit'
end
