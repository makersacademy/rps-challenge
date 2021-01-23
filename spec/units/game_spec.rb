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
    allow(game).to receive(:players).and_return [player1, botplayer]
    game.get_results
    expect(game.results[:player2]).to eq "rock"
  end

  it "randomly chooses between the options" do
    srand(3)
    expect(game.random_choice).to eq "scissors"
  end

  it "makes a random decision for player 2" do
    srand(3)
    allow(game).to receive(:players).and_return [player1, botplayer]
    allow(botplayer).to receive(:choice).and_return("scissors")
    expect(game.players[1].choice).to eq "scissors"
  end

end
