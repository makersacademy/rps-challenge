def sign_in
  visit('/')
  fill_in("player_name", with: 'Kevin')
  click_button("Single Player")
end
