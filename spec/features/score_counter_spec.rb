feature 'Show player scores' do
  scenario 'Initial game state should show 0 vs 0' do
    input_and_play
    expect(page).to have_content 'Score Counter'
    expect(page).to have_content 'Player 1 : 0 vs Computer : 0'
  end
end
