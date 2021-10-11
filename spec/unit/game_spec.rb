require 'game'

describe Game do 
  let(:player) { double :player }
  let(:computer) { double :computer, choice: :scissors }
  let(:game) { described_class.new(player, computer) }

  describe "#player" do
    it "should retrieve the player" do
      expect(game.player).to eq(player)
    end
  end

  describe "#computer" do 
    it "should give us a choice of weapon" do
      expect(game.computer.choice).to eq (computer.choice)
    end
  end 
end 