def sign_in
  visit('/')
  fill_in "human_player_name", with: 'Ben'
  click_button "Play!"
end
