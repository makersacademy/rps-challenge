def sign_in_and_play_single
  visit('/')
  click_button('Single Player')
  fill_in('player_1_name', with: "Justyna")
  click_button("submit")
end

def sign_in_and_play_multi
  visit('/')
  click_button('Multi Player')
  fill_in('player_1_name', with: "Justyna")
  fill_in('player_2_name', with: "Igor")
  click_button("submit")
end
