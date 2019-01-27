feature 'Opening the game page' do
  scenario 'should see the button options' do
    single_sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
  
feature 'Game chooses rock' do
  SEED = 2
  before(:each) do
    srand(SEED)
    single_sign_in
  end

  scenario 'player chooses rock' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock Computer chose Rock Its a draw!'
  end

  scenario 'player chooses paper' do
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper Computer chose Rock You Win!'
  end

  scenario 'player chooses scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors Computer chose Rock You lost'
  end
end

feature 'Two players' do
  before(:each) do
    double_sign_in
    click_button 'Rock'
  end

  scenario 'Player1 choses Rock, Player 2 choses Rock' do
    click_button 'Rock'
    expect(page).to have_content 'Erin chose Rock Amanda chose Rock Its a draw!'
  end

  scenario 'Player1 choses Rock, Player 2 choses Paper' do
    click_button 'Paper'
    expect(page).to have_content 'Erin chose Rock Amanda chose Paper Amanda wins!'
  end

  scenario 'Player1 choses Rock, Player 2 choses Scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'Erin chose Rock Amanda chose Scissors Erin Wins!'
  end
end
