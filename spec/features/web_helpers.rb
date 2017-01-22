def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Dave'
  click_button('Register')
end
