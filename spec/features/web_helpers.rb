def sign_in_and_play(name)
  visit '/'
  click_button 'Single Player'
  fill_in('player_1_name', with: name)
  click_button 'submit'
end

def sign_in_and_play_multi(player_1_name, player_2_name)
  visit '/'
  click_button 'Play a Friend'
  fill_in('player_1_name', with: player_1_name)
  fill_in('player_2_name', with: player_2_name)
  click_button 'submit'
end

def sign_in_and_play_custom_rounds(name, rounds)
  visit '/'
  click_button 'Single Player'
  fill_in('player_1_name', with: name)
  fill_in('best_of', with: rounds)
  click_button 'submit'
end
