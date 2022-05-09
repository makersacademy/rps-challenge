def sign_in_and_play_1p 
  visit("/")
  fill_in 'player_1', with: 'Mario'
  click_on 'Single Player Mode'
end
