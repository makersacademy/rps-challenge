def register_and_play
  visit('/')
  expect(page).to have_content('Please enter your name:')
  fill_in('player_name', with: 'BoredPerson')
  click_button('Submit')
end
