require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:rules) { double :rules }
  subject(:game) { Game.new(player, computer, rules) }

  before do
    allow(rules).to receive(:winner).and_return(:player)
  end

  describe "#winner" do

    it "shows that player won" do
      allow(player).to receive(:choice).and_return(:rock)
      allow(computer).to receive(:comp_choice).and_return(:lizard)
      expect(subject.winner).to eq(:player)
    end

  end

end