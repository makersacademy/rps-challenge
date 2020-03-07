feature 'Playing_game' do
  scenario 'has instructions for player' do
    start_game
    expect(page).to have_content "Josie, select your move!"
  end

  scenario 'can select rock' do
    start_game
    expect(page).to have_content "rock"
  end
  scenario 'can select paper' do
    start_game
    expect(page).to have_content "paper"
  end
  scenario 'can select scissors' do
    start_game
    expect(page).to have_content "scissors"
  end
end
