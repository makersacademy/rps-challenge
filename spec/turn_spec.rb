require './lib/turn.rb'

describe Turn do
  subject(:turn) { described_class.new(options) }
    let(:options) { {"player_name" => "Mike", "player_move" => :rock, "opponent_move" => :scissors} }

  describe "#player_name" do
    it 'returns player name' do
      expect(turn.player_name).to eq 'Mike'
    end
  end

  describe "#player_move" do
    it 'returns player move' do
      expect(turn.player_move).to eq :rock
    end
  end

  describe "#opponent_move" do
    it 'returns opponent move' do
      expect(turn.opponent_move).to eq :scissors
    end
  end

  context 'end game' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Mike", "player_move" => :rock, "opponent_move" => :paper} }
    let(:draw_options) { {"player_name" => "Mike", "player_move" => :rock, "opponent_move" => :rock} }
    

    describe '#win?' do
      it 'returns true if player_move is :rock and opponenent_move is :scissors' do
        expect(win_turn.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player_move is :rock and opponenent_move is :paper' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player_move is :rock and opponenent_move is :rock' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end