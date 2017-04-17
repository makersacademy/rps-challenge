require 'history'

describe History do
  subject(:history) {described_class.new}
  context "after each game" do
    before do
      history.store_hands(:paper, :rock)
      history.store_hands(:rock, :paper)
    end
    it "stores a list of player 1's hands" do
      expect(history.player_1_history).to contain_exactly(:paper, :rock)
    end
    it "stores a list of player 2's hands" do
      expect(history.player_2_history).to contain_exactly(:rock, :paper)
    end
  end
end