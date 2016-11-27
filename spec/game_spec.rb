require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) {described_class.new(player, computer)}

  describe "initialization" do

    it "has a player" do
      expect(game.player).to eq player
    end

    it "has a computer" do
      expect(game.computer).to eq computer
    end

  end

end
