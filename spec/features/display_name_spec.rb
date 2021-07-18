
feature 'Name display' do
  scenario 'will display player name', type: :feature do
  visit('/')
  fill_in 'player',	with: 'Marketeer'
  click_button 'START GAME'
  expect(page).to have_content 'Marketeer'
  end
end