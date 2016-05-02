feature 'Ending a game' do
  before {allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)}
  scenario 'computer wins' do
  visit('/')
  fill_in :player_name, with: 'Maggie'
  click_button 'START'
  click_button 'ROCK'
  click_button 'Next round'
  click_button 'ROCK'
  click_button 'Next round'
  click_button 'ROCK'
  expect(page).to have_content 'The winner is Computer!!!'
  end
end
