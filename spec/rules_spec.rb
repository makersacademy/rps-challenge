require 'rules'

describe Rules do

  describe " Returns winning weapon" do
    let(:rules) { Rules.new }

    it "Returns 'Rock'" do
      expect(rules.decide_winner("Rock", "Scissors")).to eq "Rock"
    end

    it "Returns 'Paper'" do
      expect(rules.decide_winner("Rock", "Paper")).to eq "Paper"
    end

    it "Returns 'Scissors'" do
      expect(rules.decide_winner("Paper", "Scissors")).to eq "Scissors"
    end

  end
end
