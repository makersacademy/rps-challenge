def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with:'Liz'
  click_button('Submit')
end
