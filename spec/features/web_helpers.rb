def sign_in_and_play
  visit "/"
  fill_in('player_one', with: "Matthew")
  fill_in('player_two', with: "Rafaela")
  click_button "Start Game"
end
