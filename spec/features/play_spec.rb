feature 'playing rock, paper, scissors' do

  scenario 'picks Rock' do
    click_button 'Rock'
    expect(page).to have_content 'You draw'
  end

  scenario 'picks Scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You win'
  end

  scenario 'picks Paper' do
    click_button 'Paper'
    expect(page).to have_content 'You lose'
  end

end
    


