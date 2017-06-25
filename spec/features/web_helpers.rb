
def sign_in
  visit '/'
  fill_in 'player_1', with: 'Momo'
  click_button 'Submit'
end

def sign_in_and_play_sudden_death
  visit '/'
  click_button 'Submit'
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors sudden death!!!!')
end

def sign_in_and_play_multiple
  visit '/'
  click_button 'Submit'
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors 3 out of 5!!!!')
end

def sign_in_and_play_multiple_next
  visit '/'
  fill_in 'player_1', with: 'Vivi'
  click_button 'Submit'
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors 3 out of 5!!!!')
  click_button('Next round')
end


def sign_in_and_play_multiple_subsequent
  visit '/'
  click_button 'Submit'
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors 3 out of 5!!!!')
  click_button('Next round')
  choose('scissors_player_1')
  choose('rock_player_2')
  click_button('Play')
end
