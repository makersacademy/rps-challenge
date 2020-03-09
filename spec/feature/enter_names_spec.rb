feature 'Enter names' do
  scenario 'submitting names' do
  visit('/')
  fill_in :player_1_name, with: 'Patrick'
  click_button 'One_Off'
  expect(page).to have_content 'Hello Patrick'
  end
end
