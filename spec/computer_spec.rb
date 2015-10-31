require 'computer'

describe Computer do

  subject(:computer) { described_class }

  context "computer can be:" do

    it "#rock" do
      allow(computer).to receive(:weapon) { :rock }
      expect(computer.weapon).to eq :rock
    end

    it "#paper" do
      allow(computer).to receive(:weapon) { :paper }
      expect(computer.weapon).to eq :paper
    end

    it "#scissors" do
      allow(computer).to receive(:weapon) { :scissors }
      expect(computer.weapon).to eq :scissors
    end
  end
end
