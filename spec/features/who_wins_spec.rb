feature 'determines who wins the game' do
    
scenario 'I win' do
sign_in_and_play
srand(random_number)
  click_button 'Rock'
  expect(page).to have_content 'You win!'
end

scenario 'I lose' do
  click_button 'Paper'
  expect(page).to have_content 'You lose!'
end

scenario 'I draw' do
  click_button 'Scissors'
  expect(page).to have_content 'You draw!'
end
end