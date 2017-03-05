require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Noora", "player_shape" => :rock, "opponent_shape" => :scissors} }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq 'Noora'
    end
  end

  describe '#player_shape' do
    it 'returns the player shape' do
      expect(turn.player_shape).to eq :rock
    end
  end

  describe '#opponent_shape' do
    it 'returns the opponent shape' do
      expect(turn.opponent_shape).to eq :scissors
    end
  end

  context 'game over' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_conditions) }
    subject(:draw_turn) { described_class.new(draw_conditions) }

    let(:lose_conditions) { {"player_name" => "Noora", "player_shape" => :rock, "opponent_shape" => :paper} }
    let(:draw_conditions) { {"player_name" => "Noora", "player_shape" => :rock, "opponent_shape" => :rock} }


    describe '#win?' do
      it 'returns true if player_shape is :rock and opponent_shape is :scissors' do
        expect(win_turn.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player_shape is :rock and opponent_shape is :paper' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player_shape is :rock and opponent_shape is :rock' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end
