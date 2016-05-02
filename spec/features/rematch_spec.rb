feature 'Rematch' do
  before {allow_any_instance_of(Array).to receive(:sample).and_return(:LIZARD)}
  scenario 'clicking play again redirects to the play page' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'ROCK'
  click_button 'Next round'
  click_button 'ROCK'
  click_button 'Next round'
  click_button 'ROCK'
  click_button 'Play again'
  expect(page).to have_content 'Choose an option'
  end
end
