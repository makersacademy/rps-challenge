def sign_in
  visit('/')
  fill_in :player_1_name, with: 'Anne'
  click_button "Let's Play!"
end
