require_relative '../../app.rb'

feature 'testing move page' do

  scenario 'player can see the options for moves' do
    visit('/')
    fill_in 'name', with: 'Anna'
    click_button 'play'
    expect(page).to have_content('rock')
    expect(page).to have_content('paper')
    expect(page).to have_content('scissors')
  end


scenario 'player can enter the move' do
  visit('/')
  fill_in 'name', with: 'Anna'
  click_button 'play'
  fill_in 'move', with: 'rock'
  click_button 'start'
  expect(page).to have_content('Your move: rock')
end
end