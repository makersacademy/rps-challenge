def register_and_play
  visit('/')
  fill_in :name, with: 'Pooch'
  click_button 'Submit'
  expect(page).to have_content('Pooch')
end
