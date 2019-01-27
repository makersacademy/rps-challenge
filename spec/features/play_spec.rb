feature 'Opening the game page' do
  scenario 'should see the button options' do
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
  
feature 'Game chooses rock' do
  scenario 'player chooses rock' do
    srand(221563)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock Computer chose Rock its a draw!'
  end
end  
feature 'Game chooses rock' do
  scenario 'player chooses paper' do
    srand(225163)
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper Computer chose Rock Winner!'
  end
end    
feature 'Game chooses rock' do
  scenario 'player chooses scissors' do
    srand(221565)
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors Computer chose Rock Loser'
  end
end
  
