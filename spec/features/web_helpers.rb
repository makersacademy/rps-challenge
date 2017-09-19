def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Zoe'
  click_on 'Start Game'
end
