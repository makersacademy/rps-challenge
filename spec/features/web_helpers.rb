def one_player_sign_in
  visit ('/')
  choose('mode_1')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  click_button('Submit')
end

def one_player_sign_in_play_rock
  visit ('/')
  choose('mode_1')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  click_button('Submit')
  click_link('Rock')
end

def one_player_sign_in_play_scissors
  visit ('/')
  choose('mode_1')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  click_button('Submit')
  click_link('Scissors')
end

def two_player_sign_in
  visit ('/')
  choose('mode_2')
  click_button('Submit')
  fill_in('player1_name', with: 'Kavita')
  fill_in('player2_name', with: 'Vanita')
  click_button('Submit')
end
