require 'game'

describe Game do
  subject(:game) { described_class.new(ruan, robot) }
  let(:ruan) { double :ruan }
  let(:robot) { double :robot }

  describe '#initialization' do
    it 'initalizes a game' do
      expect(game.current_player).to eq ruan
    end
  end
end
