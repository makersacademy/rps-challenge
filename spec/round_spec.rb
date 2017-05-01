require './lib/round'

describe Round do
  subject(:round) { described_class.new (options) }
  let(:options) {
    {"name" => "Ben",
      "shape" => :rock,
      "opposition_shape" => :scissors}
    }

  describe '#name' do
    it 'returns name of player' do
      expect(round.name).to eq 'Ben'
    end
  end

  describe '#shape' do
    it 'returns shape chosen by player' do
      expect(round.shape).to eq :rock
    end
  end

  describe '#opposition_shape' do
    it 'returns shape chosen by opoosition' do
      expect(round.opposition_shape).to eq :scissors
    end
  end

  context 'game over' do
    describe '#win?' do
      it 'returns true if the player wins' do
        expect(round.win?).to eq true
      end
    end
  end

end
