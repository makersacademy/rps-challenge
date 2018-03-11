def sign_in_and_play
  visit "/"
  fill_in :name, with: 'Reena'
  click_button "Start Game"
  expect(page).to have_content "Welcome to the game, Reena"
end
