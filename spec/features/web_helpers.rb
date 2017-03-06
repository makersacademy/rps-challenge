def register_to_play
  visit '/'
  fill_in :player, with: 'Lisa'
  click_button 'Register'
  expect(page).to have_content("Lisa")
end
