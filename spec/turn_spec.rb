require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {
    player_name: 'Mike',
    player_option: 'Rock',
    opponent_option: 'Rock'
  } }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq 'Mike'
    end
  end

  describe '#player_option' do
    it 'returns the players option' do
      expect(turn.player_option).to eq 'Rock'
    end
  end

  describe '#opponent_option' do
    it 'returns the opponents option' do
      expect(turn.opponent_option).to eq 'Rock'
    end
  end
end
