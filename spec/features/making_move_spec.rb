feature 'Playing_game' do
  scenario 'has instructions for player' do
    start_game
    expect(page).to have_content "Josie, select your move!"
  end

  scenario 'can select rock' do
    start_game
    expect(page).to have_content "👊🏼"
  end
  scenario 'can select paper' do
    start_game
    expect(page).to have_content "🤚🏼"
  end
  scenario 'can select scissors' do
    start_game
    expect(page).to have_content "✌🏼"
  end
end
