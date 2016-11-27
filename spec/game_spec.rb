require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) {described_class.new(player, computer, :rock)}


  describe "initialization" do

    it "has a player" do
      expect(game.player).to eq player
    end

    it "has a computer" do
      expect(game.computer).to eq computer
    end

    it "has a player choice" do
      expect(game.player_choice).to eq :rock
    end

  end

  describe "playing a game" do

    it "returns a fixed winner" do
      expect(game.winner).to eq player
    end

  end


end
