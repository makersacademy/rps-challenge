require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, weapon: "Rock") }
  let(:player_2) { double(:computer, generate_weapon: "Scissors", return_weapon: "Scissors") }

  it "checks if player wins" do
    expect(game.win?).to be true
  end
end
