feature 'Buttons Available' do
  scenario 'rock, paper, scissors' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  expect(page).to have_button('ROCK')
  expect(page).to have_button('PAPER')
  expect(page).to have_button('SCISSORS')
  expect(page).to have_button('LIZARD')
  expect(page).to have_button('SPOCK')
  end
end
