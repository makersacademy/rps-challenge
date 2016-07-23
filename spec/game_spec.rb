require 'game'

describe Game do
  let(:player_1) {double :player}
  let(:computer) {double :player}
  before (:each) do
    allow(player_1).to receive(:option).and_return(:rock)
    allow(computer).to receive(:option).and_return(:scissor)
    allow(player_1).to receive(:name).and_return("Samed")
    allow(computer).to receive(:name).and_return("Computer")
  end

  subject(:game) {described_class.new(player_1, computer)}
  describe "a game has two players" do
    it "returns player_1" do
      expect(game.player_1).to eq player_1
    end
    it "returns player_2 or aka computer" do
      expect(game.player_2).to eq computer
    end
  end

  describe "winner declaration" do
    it "returns the winner" do

      expect(game.declare_winner(player_1.option, computer.option)).to eq "Samed won!"
    end
  end
end
