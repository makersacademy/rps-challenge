# file containing spec file methods
def sign_in_and_play
  visit('/')
  fill_in 'player_1_name',	with: 'Jack'
  click_button('Play!')
end

def multiplayer_sign_in
  visit('/')
  fill_in 'player_1_name',	with: 'Jack'
  fill_in 'player_2_name', with: 'Durain'
  click_button('Play!')
end
