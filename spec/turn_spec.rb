require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Ron", "player_shape" => :rock, "opponent_shape" => :scissors }}

  describe '#player_name' do
    it 'returns player name' do
      expect(turn.player_name).to eq 'Ron'
    end
  end

  describe '#player_shape' do
    it 'returns player shape' do
      expect(turn.player_shape).to eq :rock
    end
  end

  describe '#opponent_shape' do
    it 'returns opponent shape' do
      expect(turn.opponent_shape).to eq :scissors
    end
  end

  context 'end game' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { { "player_name" => "Ron", "player_shape" => :rock, "opponent_shape" => :paper } }
    let(:draw_options) { { "player_name" => "Ron", "player_shape" => :rock, "opponent_shape" => :rock } }

    describe '#win?' do
      it 'returns true if player shape is rock and opponent shape is scissors' do
        expect(win_turn.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player shape is rock and opponent shape is paper' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player shape is rock and opponent shape is rock' do
        expect(draw_turn.draw?).to eq true
      end
    end

  end

end
