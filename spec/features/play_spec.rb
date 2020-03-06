feature 'playing rock, paper, scissors' do

  scenario 'picks Rock' do
    click_link 'Rock'
    expect(page).to have_content 'You draw'
  end

  scenario 'picks Scissors' do
    click_link 'Scissors'
    expect(page).to have_content 'You win'
  end

  scenario 'picks Paper' do
    click_link 'Paper'
    expect(page).to have_content 'You lose'
  end

end
    


