require 'player'

describe Player do

  subject(:player) { described_class.new('Hamza') }

  context "#initialize" do

    it "has a #name attribute" do
      expect(player).to have_attributes(name: 'Hamza')
    end
  end

  context "#weapon error" do

    it "raises an error if player chooses unidentified weapon" do
      expect{player.weapon=('x')}.to raise_error described_class::WEAPON_ERROR
    end
  end

  context "player can be:" do

    it "#rock" do
      allow(player).to receive(:weapon) { :rock }
      expect(player.weapon).to eq :rock
    end

    it "#paper" do
      allow(player).to receive(:weapon) { :paper }
      expect(player.weapon).to eq :paper
    end

    it "#scissors" do
      allow(player).to receive(:weapon) { :scissors }
      expect(player.weapon).to eq :scissors
    end
  end
end
