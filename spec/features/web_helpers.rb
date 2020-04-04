def sign_in_and_play
  visit('/')
  click_on("Let's Go!!")
  fill_in('player_name', with: 'Tom')
  click_on('Submit')
end
