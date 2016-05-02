feature 'Enter name' do
  scenario 'submitting name' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  expect(page).to have_content 'Maggie'
  end
end
