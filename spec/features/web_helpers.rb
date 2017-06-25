
def sign_in
  visit '/'
  fill_in 'player_1', with: 'Momo'
  click_button 'Submit'
end


def sign_in_and_play
  visit '/'
  click_button 'Submit'
  visit '/play'
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors!!!!')  
end
