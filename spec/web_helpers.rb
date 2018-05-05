def sign_in
  visit('/')
  fill_in 'player_one', with: 'Salome'
  click_on 'submit'
end
