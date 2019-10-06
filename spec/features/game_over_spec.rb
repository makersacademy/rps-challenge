feature 'Game ends when player score reaches 2' do
  scenario 'player 1 wins round' do
    play_single
    player1_wins
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
    click_button('Play')
    expect(page).to have_button 'Play Again'
  end
end
