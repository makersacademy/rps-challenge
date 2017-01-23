require 'rules_handler.rb'

describe RulesHandler do

  subject(:rules_handler) { described_class }

  describe "#decide_winner" do
    it "returns player 1 as winner when paper vs rock" do
      expect(rules_handler.decide_winner(:paper, :rock)).to include :player_1
    end
    it "returns player 2 as winner when rock vs paper" do
      expect(rules_handler.decide_winner(:spock, :lizard)).to include :player_2
    end
  end
end
