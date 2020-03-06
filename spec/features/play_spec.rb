feature 'playing rock, paper, scissors' do

  scenario 'picks Rock' do
    click_button 'rock'
    expect(page).to have_content 'You draw'
  end

  scenario 'picks Scissors' do
    click_button 'scissors'
    expect(page).to have_content 'You win'
  end

  scenario 'picks Paper' do
    click_button 'paper'
    expect(page).to have_content 'You lose'
  end

end
    


