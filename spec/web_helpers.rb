def sign_in_and_play
  visit '/'
  fill_in(:player_name, with: 'Marketeer')
  click_button('Submit')
end

def sign_in_and_play_2_players
  visit '/'
  fill_in(:player_name, with: 'Marketeer')
  fill_in(:opponent_name, with: 'Ruby')
  click_button('Submit')
end

def choose_and_check
  click_button('btn_p1')
  click_link 'Check who won...'
end
