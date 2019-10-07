require_relative '../../app.rb'

feature 'testing result page' do

scenario 'player can see computer move' do
  visit('/')
  fill_in 'name', with: 'Anna'
  click_button 'play'
  fill_in 'move', with: 'rock'
  click_button 'start'
  expect(page).to have_content('Computer move:')
end

scenario 'player can see his move' do
  visit('/')
  fill_in 'name', with: 'Anna'
  click_button 'play'
  fill_in 'move', with: 'rock'
  click_button 'start'
  expect(page).to have_content('Your move:')
  end


end
