def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'Jill')
  click_button('Submit')
end

