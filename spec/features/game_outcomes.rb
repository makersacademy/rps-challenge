feature 'Choose Action' do
  scenario 'rock' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'ROCK'
  expect(page).to have_content 'ROCK'
  end
end

# feature 'Choose Action' do
#   scenario 'paper' do
#   visit('/')
#   fill_in :player_name, with: 'Maggie'
#   click_button 'START'
#   click_button 'PAPER'
#   expect(page).to have_content 'PAPER'
#   end
# end
#
# feature 'Choose Action' do
#   scenario 'scissors' do
#   visit('/')
#   fill_in :player_name, with: 'Maggie'
#   click_button 'START'
#   click_button 'SCISSORS'
#   expect(page).to have_content 'SCISSORS'
#   end
# end
