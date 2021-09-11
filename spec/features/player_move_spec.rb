feature 'Player picks their move (ROCK, PAPER OR SCISSORS' do
  
  scenario 'Player picks ROCK' do
  visit '/'
  fill_in 'player_name', with: 'Florence'
  click_button 'Play'
  click_button 'ROCK'
  expect(page).to have_content 'ROCK'
  end 


  scenario 'Player picks PAPER' do
  visit '/'
  fill_in 'player_name', with: 'Florence'
  click_button 'Play'
  click_button 'PAPER'
  expect(page).to have_content 'PAPER'
  end 
 
  
  scenario 'Player picks SCISSORS' do
  visit '/'
  fill_in 'player_name', with: 'Florence'
  click_button 'Play'
  click_button 'SCISSORS'
  expect(page).to have_content 'SCISSORS'
  end 
end
