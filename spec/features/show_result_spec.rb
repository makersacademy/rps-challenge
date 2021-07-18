
feature 'Show matchup' do
  scenario 'will show the player choice', type: :feature do
  visit('/')
  fill_in 'player',	with: 'Marketeer'
  click_button 'START GAME'
  click_button 'Rock'
  expect(page).to have_content 'Rock vs.'
  end
end