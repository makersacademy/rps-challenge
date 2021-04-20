def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Yohann'
  click_button 'Submit'
  expect(page).to have_content 'Welcome, Yohann'
end