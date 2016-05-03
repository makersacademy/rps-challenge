def sign_in
  visit '/'
  expect(page).to have_content 'The Rock Paper Scissors Lizard Spock Game'
  expect(page).to have_content 'Enter players names.'
  fill_in :player_1, with: 'Lexi'
  fill_in :player_2, with: 'Hazuki'
  click_button 'Submit'
  expect(page).to have_content 'Lexi'
  expect(page).to have_content 'Hazuki'
end