def sign_in
  visit('/')
  fill_in('Player_1', with: 'Alessandro')
  click_button('Submit')
end
