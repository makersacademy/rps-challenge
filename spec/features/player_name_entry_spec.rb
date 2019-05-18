feature 'Name entry' do
  scenario 'the player name can be entered' do
  visit '/'
  fill_in :player, with: 'Ben'
  click_button 'Submit'
  expect(page).to have_content 'Ben'
  end
end
