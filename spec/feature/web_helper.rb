def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: "Lisa"
  fill_in 'player_2', with: "Paul"
  click_button('Play the game!')
  end
  