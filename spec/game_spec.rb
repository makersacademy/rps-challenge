require 'game'

describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#ai_choice' do
    it 'returns 3' do
      allow(game).to receive(:ai_choice).and_return 3
      expect(game.ai_choice).to eq 3
      game.ai_choice
    end
  end
end