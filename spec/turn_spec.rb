require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "George", "player_choice" => :rock, "cpu_choice" => :scissors} }

  describe '#player_name' do
    it 'return player name' do
      expect(turn.player_name).to eq "George"
    end
  end

  describe '#player_choice' do
    it 'return player choice' do
      expect(turn.player_choice).to eq :rock
    end
  end

  describe '#cpu_choice' do
    it 'return cpu choice' do
      expect(turn.cpu_choice).to eq :scissors
    end
  end

  context 'end game' do
    subject(:win_turn) { turn}
    subject(:lose_turn) { described_class.new(lose_option) }
    subject(:draw_turn) { described_class.new(draw_option) }

    let(:lose_option) { {"player_name" => "George", "player_choice" => :rock, "cpu_choice" => :paper} }
    let(:draw_option) { {"player_name" => "George", "player_choice" => :rock, "cpu_choice" => :rock} }

    describe '#win?' do
      it 'declares a winner' do
        expect(win_turn.win?).to eq true
      end
    end
    
    describe '#lose' do
      it 'delares a loser' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw' do
      it 'declares a draw' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end