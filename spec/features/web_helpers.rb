def one_player_sign_in
  visit '/'
  choose('mode_1')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  click_button('Submit')
end

def one_player_sign_in_play_rock
  one_player_sign_in
  click_link('Rock')
end

def one_player_sign_in_play_scissors
  one_player_sign_in
  click_link('Scissors')
end

def two_player_sign_in
  visit '/'
  choose('mode_2')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  fill_in('player2_name', with: 'Vanita')
  click_button('Submit')
end

def two_player_sign_in_and_play
  two_player_sign_in
  click_link('Rock')
  click_link('Paper')
end
