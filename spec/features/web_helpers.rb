require 'game.rb'
def sign_in
  visit '/'
  fill_in 'player_1', with: 'Momo'
  click_button 'Start the game'
end

def sign_in_and_play_sudden_death
  sign_in
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors sudden death!!!!')
end

def sign_in_and_play_multiple
  sign_in
  choose('paper_player_1')
  choose('rock_player_2')
  click_button('Play Rock, Paper, Scissors 3 out of 5!!!!')
end

def sign_in_and_play_multiple_next
  sign_in_and_play_multiple
  click_button('Next round')
end

def sign_in_and_play_multiple_subsequent
  sign_in_and_play_multiple
  click_button('Next round')
  choose('scissors_player_1')
  choose('rock_player_2')
  click_button('Play')
end

def play_5_times
  sign_in_and_play_multiple_subsequent
  3.times do
    click_button('Next round')
    choose('scissors_player_1')
    choose('rock_player_2')
    click_button('Play')
  end
end
