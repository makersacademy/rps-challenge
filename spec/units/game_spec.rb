require "game"

describe Game do

  let(:player1) { double(:player1, name: "Xena") }
  subject(:game) { Game.new(player1) }

  it "stores players" do
    expect(game.players).to include player1
  end

  it "creates and stores an instance of itself" do
    Game.create(player1)
    expect(Game.instance.players).to include player1
  end

end
