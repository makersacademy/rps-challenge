def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Taran')
  click_button('Submit')
end

def sign_in_two_players
  visit('/')
  fill_in('player_1', with: 'Taran')
  fill_in('player_2', with: 'Zena')
  click_button('two_player_submit')
end

def selection_helper(player, opponent)
  select player, from: 'choices'
  click_button('Submit')
  select opponent, from: 'choices'
  click_button('Submit')
end
