require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe "#result" do
    context "draw" do
      it "if player weapon is same as computer weapon" do
        allow(player).to receive(:weapon).and_return('rock')
        allow(computer).to receive(:weapon).and_return('rock')
        expect(game.result).to eq :draw
      end
    end
  end

end
