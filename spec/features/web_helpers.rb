def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Paulo'
  fill_in :player_2_name, with: 'Helen'
  click_button 'Lets play'
end
