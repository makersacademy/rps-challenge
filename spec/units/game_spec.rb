require "game"

describe Game do

  let(:player1) { double(:player1, name: "Xena") }
  let(:botplayer) { double(:player2, name: "bot")}
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

  # it "stores user's choice of rps" do
  #   expect(game.save_choice).to change game.choices
  # end

end
