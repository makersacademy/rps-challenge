feature 'Game ends when player score reaches 2' do
  scenario 'player 1 wins round' do
    play_single
    2.times { player1_wins }
    expect(page).to have_button 'Play Again'
  end

  # scenario 'player 2 wins round' do
  #   play_single
  #   player2_wins
  #   expect(page).to have_content '0-1'
  # end
end
