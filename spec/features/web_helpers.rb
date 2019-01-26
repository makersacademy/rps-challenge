def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'Jill')
  click_button('Submit')
  expect(page).to have_content('Player 1: Jill')
end