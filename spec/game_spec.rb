require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) {described_class.new(player)}

  describe "initialization" do

    it "has a player" do
      expect(game.player).to eq player
    end

  end

end
