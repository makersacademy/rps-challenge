feature 'play another game as new player' do
  scenario 'allows a different player to play after' do
    change_player
    expect(page).to have_text("Rock Paper Scissors!")
  end
end
