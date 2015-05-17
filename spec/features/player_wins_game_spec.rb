require 'game'

feature 'Player plays game' do
  scenario 'and computer wins after 2 goes' do
    game = Game.new Player

    allow(game.player_2).to receive(:random_selection).and_return("Spock")

    game.player_1.take_a_turn "Rock"
    game.player_2.random_selection
    game.process_turn

    game.player_1.take_a_turn "Scissors"
    game.player_2.random_selection
    game.process_turn

    expect(game.process_turn).to eq "Game already won"
  end
end