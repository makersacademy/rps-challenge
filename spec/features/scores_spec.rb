feature 'keeps track of scores' do
  scenario 'player 1 wins round' do
    play_single
    player1_wins
    expect(page).to have_content '1-0'
  end

  scenario 'player 2 wins round' do
    play_single
    player2_wins
    expect(page).to have_content '0-1'
  end

  scenario 'round tied' do
    play_single
    draw
    expect(page).to have_content '0-0'
  end
end
