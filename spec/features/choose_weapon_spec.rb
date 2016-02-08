feature 'Player 1 can choose a weapon' do
  
  before(:each) do
    sign_in_and_play
  end
  
  scenario 'Rock, Paper or Scissors as options' do
    expect(page).to have_content 'Smoky, your options are Rock, Paper, Scissors'
  end

  scenario 'Player chooses his weapon' do
    choose 'Rock'
    click_button 'Ready'
    expect(page).to have_content 'Smoky, you chose: Rock'
  end
end