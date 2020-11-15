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
end