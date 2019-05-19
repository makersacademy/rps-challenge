feature 'Player Action' do
  scenario 'the player can choose rock' do
    start_game
    click_button 'Rock'
    expect(page).to have_content 'Ben chose Rock!'
  end

  scenario 'the player can choose paper' do
    start_game
    click_button 'Paper'
    expect(page).to have_content 'Ben chose Paper!'
  end

  scenario 'the player can choose scissors' do
    start_game
    click_button 'Scissors'
    expect(page).to have_content 'Ben chose Scissors!'
  end
end
