require 'player'

describe Player do
  subject(:player) { Player.new("Amanda") }
  let(:rock) { double :rock }

    it "returns it's name" do
      expect(player.name).to eq "Amanda"
    end

    it { is_expected.to respond_to(:weapon) }

    it "can choose a weapon" do
      allow(rock).to receive(:to_sym).and_return(:rock)
      expect(player.choose_weapon(rock)).to eq :rock
    end
end
