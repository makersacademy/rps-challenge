require "game"

describe Game do

  let(:player1) { double(:player1, name: "Xena", choice: "paper") }
  let(:botplayer) { double(:player2, name: "bot", choice: "rock")}
  subject(:game) { Game.new(player1) }

  it "stores players" do
    expect(game.players).to include player1
  end

  it "automatically includes a second player" do
    expect(game.players.length).to eq game.players.compact.length
  end

  it "creates and stores an instance of itself" do
    Game.create(player1)
    expect(Game.instance.players).to include player1
  end

  it "knows what the players chose" do
    allow(game).to receive(:players).and_return([player1, botplayer])
    game.get_results
    expect(game.results[:player2]).to eq "rock"
  end

  it "knows if there was a draw" do
    allow(game).to receive(:results).and_return({player1: "paper", player2: "paper"})
    expect(game).to be_a_draw
  end

  it "reports on the winner if it's not a draw" do
    allow(game).to receive(:results).and_return({player1: "scissors", player2: "paper"})
    expect(game.winner).to be player1
  end

end
