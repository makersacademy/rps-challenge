def sign_in
  visit('/')
  fill_in("player_name", with: 'John')
  click_button "Submit"
end
