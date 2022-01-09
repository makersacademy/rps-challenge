def sign_in_and_play
  visit('/')
  fill_in 'name1', with: 'Josh'
  fill_in 'name2', with: 'Peter'
  click_button('Submit')
end
