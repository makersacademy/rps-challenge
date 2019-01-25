require 'battle.rb'
describe Battle do
  before (:each) do
    @player = double("player")
    @computer = double("computer")
  end
  describe "#winner" do
    it "returns the winner" do
      allow(@player).to recieve(:move) { :rock }
      allow(@computer).to recieve(:move) { :scissors }
      expect(Battle.new(@player,@winner).winner).to eq(@player)
    end
  end
end
