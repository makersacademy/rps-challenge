feature 'Playing the game' do
  scenario 'player can choose rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'player can choose paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'player can choose scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors'
  end
end
