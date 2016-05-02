feature 'Next round' do
  scenario 'clicking next round redirects to the play page' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'ROCK'
  click_button 'Next round'
  expect(page).to have_content 'Choose an option'
  end
end
