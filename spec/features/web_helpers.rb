def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Katie'
  click_button 'Submit'
  expect(page).to have_content 'Choose your weapon, Katie'
end
