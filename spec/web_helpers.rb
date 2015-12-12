def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jon'
  click_button('Start a new game')
end
