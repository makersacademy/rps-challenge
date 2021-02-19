require 'player'
def sign_in_and_play
@player_1_name = 'Pug'
@player_2_name = 'Bulldog'

visit('/')
fill_in('player_1_name', with: @player_1_name)
fill_in('player_2_name', with: @player_2_name)
click_on('Submit')
end
