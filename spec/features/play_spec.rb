feature 'Opening the game page' do
  scenario 'should see the button options' do
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
  
feature 'Game chooses rock' do
  SEED = 2
  scenario 'player chooses rock' do
    srand(SEED)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock Computer chose Rock Its a draw!'
  end
  scenario 'player chooses paper' do
    srand(SEED)
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper Computer chose Rock You Win!'
  end
  scenario 'player chooses scissors' do
    srand(SEED)
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors Computer chose Rock You lost'
  end
end
