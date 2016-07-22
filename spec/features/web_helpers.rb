def sign_in_and_play
  visit "/"
  fill_in :player_1_name, with: 'Jess'
  click_button('submit')
end
