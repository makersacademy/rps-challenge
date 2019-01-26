require 'battle.rb'
describe Battle do
  before(:each) do
    @player = double("player")
    @computer = double("computer")
  end
  describe "#winner" do
    it "returns the winner" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :scissors }
      expect(Battle.new(@player, @computer).winner).to eq(@player)
      allow(@player).to receive(:move) { :paper }
      allow(@computer).to receive(:move) { :rock }
      expect(Battle.new(@player, @computer).winner).to eq(@player)
      allow(@player).to receive(:move) { :scissors }
      allow(@computer).to receive(:move) { :paper }
      expect(Battle.new(@player, @computer).winner).to eq(@player)
    end
    it "returns :draw if it's a draw" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :rock }
      expect(Battle.new(@player, @computer).winner).to eq(:draw)
      allow(@player).to receive(:move) { :paper }
      allow(@computer).to receive(:move) { :paper }
      expect(Battle.new(@player, @computer).winner).to eq(:draw)
      allow(@player).to receive(:move) { :scissors }
      allow(@computer).to receive(:move) { :scissors }
      expect(Battle.new(@player, @computer).winner).to eq(:draw)
    end
    it "returns nil if players haven't chosen moves" do
      allow(@player).to receive(:move) { nil }
      allow(@computer).to receive(:move) { nil }
      expect(Battle.new(@player, @computer).winner).to eq(nil)
    end
  end
  describe "#loser" do
    it "returns the loser" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :scissors }
      expect(Battle.new(@player, @computer).loser).to eq(@computer)
      allow(@player).to receive(:move) { :paper }
      allow(@computer).to receive(:move) { :rock }
      expect(Battle.new(@player, @computer).loser).to eq(@computer)
      allow(@player).to receive(:move) { :scissors }
      allow(@computer).to receive(:move) { :paper }
      expect(Battle.new(@player, @computer).loser).to eq(@computer)
    end
    it "returns :draw if it's a draw" do
      allow(@player).to receive(:move) { :rock }
      allow(@computer).to receive(:move) { :rock }
      expect(Battle.new(@player, @computer).loser).to eq(:draw)
      allow(@player).to receive(:move) { :scissors }
      allow(@computer).to receive(:move) { :scissors }
      expect(Battle.new(@player, @computer).loser).to eq(:draw)
      allow(@player).to receive(:move) { :paper }
      allow(@computer).to receive(:move) { :paper }
      expect(Battle.new(@player, @computer).loser).to eq(:draw)
    end
  end
end
