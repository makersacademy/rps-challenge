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
    subject(:win_round) { round }
    subject(:lose_round) { described_class.new(lose_options) }
    subject(:draw_round) { described_class.new(draw_options)}

    let(:lose_options) {
      {"name" => "Ben",
        "shape" => :rock,
        "opposition_shape" => :paper}
      }

    let(:draw_options) {
      {"name" => "Ben",
        "shape" => :rock,
        "opposition_shape" => :rock}
      }

    describe '#win?' do
      it 'returns true if the player wins' do
        expect(win_round.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if the player loses' do
        expect(lose_round.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if the player draws' do
        expect(draw_round.draw?).to eq true
      end
    end
  end

end
