feature 'Choose Action' do
  scenario 'rock' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'ROCK'
  expect(page).to have_content 'chose ROCK'
  end
end

feature 'Choose Action' do
  scenario 'paper' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'PAPER'
  expect(page).to have_content 'chose PAPER'
  end
end

feature 'Choose Action' do
  scenario 'scissors' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'SCISSORS'
  expect(page).to have_content 'chose SCISSORS'
  end
end

feature 'Choose Action' do
  scenario 'lizard' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'LIZARD'
  expect(page).to have_content 'chose LIZARD'
  end
end

feature 'Choose Action' do
  scenario 'spock' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'SPOCK'
  expect(page).to have_content 'chose SPOCK'
  end
end
