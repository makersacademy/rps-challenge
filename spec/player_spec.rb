require 'player'
require 'choose'

describe Player do

  subject(:alfonso) { Player.new("Alfonso") }

  describe '#initialization' do
    it "Shows name" do
      expect(alfonso.name).to eq "Alfonso"
    end
  end
  describe "comp_decision" do
    decision = :paper
    it "random decision" do
      alfonso.comp_decision
      expect(alfonso.choose(decision)).to eq :paper
    end
  end
end
