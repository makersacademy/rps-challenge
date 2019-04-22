require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {
    player_name: :Mike,
    player_option: :Rock,
    opponent_option: :Scissors
  } }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq :Mike
    end
  end

  describe '#player_option' do
    it 'returns the players option' do
      expect(turn.player_option).to eq :Rock
    end
  end

  describe '#opponent_option' do
    it 'returns the opponents option' do
      expect(turn.opponent_option).to eq :Scissors
    end
  end

  context 'game ends' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(losing_options) }
    subject(:draw_turn) { described_class.new(drawing_options) }
    let(:losing_options) { {player_name: :Mike, player_option: :Rock, opponent_option: :Paper} }
    let(:drawing_options) { {player_name: :Mike, player_option: :Rock, opponent_option: :Rock} }


    describe '#win?' do
      it 'returns true if players shape is Rock and opponents is Scissors' do
        expect(win_turn.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if players shape is Rock and opponents is Paper' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if players shape is Rock and opponents is Rock' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end
