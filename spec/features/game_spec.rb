feature 'rps game' do 
  scenario 'user is presented with 3 options: Rock, Paper, Scisors' do  
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'user selects chioce and gets confirmation message' do 
  sign_in
  click_button 'Rock'
  expect(page).to have_content 'You chose Rock!'
  end

  scenario 'CPU chooses Paper' do 
  srand(23332)
  sign_in
  click_button 'Rock'
  expect(page).to have_content "CPU chose Paper!"
  end
end
