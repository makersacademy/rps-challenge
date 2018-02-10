def sign_in_and_play_single
  visit('/')
  click_button('Single Player')
  fill_in('player_1_name', with: "Justyna")
  click_button("submit")
end
