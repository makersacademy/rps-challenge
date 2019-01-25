require 'battle.rb'
describe Battle do
  before (:each) do
    @player = double("player")
    @computer = double("computer")
  end
  describe "#winner" do
    it "returns the winner" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :scissors }
      expect(Battle.new(@player,@computer).winner).to eq(@player)
    end
    it "returns :draw if it's a draw" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :rock }
      expect(Battle.new(@player,@computer).winner).to eq(:draw)
    end
  end
end
