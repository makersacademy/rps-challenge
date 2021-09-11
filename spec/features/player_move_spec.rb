feature 'Player picks their move (ROCK, PAPER OR SCISSORS' do
  
  scenario 'Player picks ROCK' do
  sign_in_and_play
  click_button 'ROCK'
  expect(page).to have_content 'ROCK'
  end 
  scenario 'Player picks PAPER' do
  sign_in_and_play
  click_button 'PAPER'
  expect(page).to have_content 'PAPER'
  end 

  scenario 'Player picks SCISSORS' do
  sign_in_and_play
  click_button 'SCISSORS'
  expect(page).to have_content 'SCISSORS'
  end 
  
end
