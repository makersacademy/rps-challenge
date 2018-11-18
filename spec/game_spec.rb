require 'game'

describe Game do

  let(:player) { double :player }
  let(:enemy) { double :enemy }
  subject(:game) { described_class.new(player, enemy) }

  it { is_expected.to respond_to(:player).with(0).arguments }
  it { is_expected.to respond_to(:enemy).with(0).arguments }

  describe '#player' do
    it 'accepts Player' do
      expect(game.player).to eq player
    end
  end

end
