def sign_in
  visit('/')
  fill_in 'player_name', with: 'Nico'
  click_on 'Submit'
end