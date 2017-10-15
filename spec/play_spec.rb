require './lib/play'

describe Play do
  let(:weapon_1) { :rock }
  let(:weapon_2) { :paper }
  let(:weapon_3) { :scissors }

  describe '#result' do
    subject(:play_win) { described_class.new(weapon_1, weapon_3) }
    subject(:play_lose) { described_class.new(weapon_1, weapon_2) }
    subject(:play_draw) { described_class.new(weapon_1, weapon_1) }

    it 'returns a draw' do
      expect(play_draw.result).to eq('You drew')
    end
    it 'returns a win' do
      expect(play_win.result).to eq('You won')
    end
    it 'returns a loss' do
      expect(play_lose.result).to eq('You lost')
    end
  end
end
