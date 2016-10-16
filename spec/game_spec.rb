require "spec_helper"

describe Game do
  let(:player_1) { double("player", name: 'test')}

  describe '#player_1_name' do
    it 'returns player 1 name' do
      test = described_class.new(player_1)
      expect(test.player_1_name).to eq('test')
    end
  end
end
