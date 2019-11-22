require './lib/game'

describe Game do

  let (:player1) { double "first game player" }
  let (:player2) { double "second game player" }
  subject(:game) { described_class.new("Player 1, Player 2") }

  it "should be able to store a game" do
    expect(Game.new_game(player1, player2)).to be_an_instance_of(Game)
  end

  it "should be able to access the current game" do
    game = Game.new_game(player1, player2)
    expect(Game.current_game).to eq game
  end

end
