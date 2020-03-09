require 'turn'

describe Turn do
    subject(:turn) { described_class.new(options) }
    let(:options) { { "player_name" => "Rafa", "player_shape" => :rock, "opponent_shape" => :scissors } }

  describe '#player_name' do
      it 'returns player name' do
          expect(turn.player_name).to eq "Rafa"
      end
  end
  describe '#player_shape' do
    it 'returns player name' do
        expect(turn.player_shape).to eq :rock
    end
  end
  describe '#opponent_shape' do 
    it 'returns opponent_shape' do
        expect(turn.opponent_shape).to eq :scissors
    end 
  end 
  context do
  subject(:win_turn)  { turn }
  subject(:lose_turn) { described_class.new(options) }
  subject(:draw_turn) { described_class.new(options) }

  let(:lose_turn) { { "player_name" => "Rafa", "player_shape" => :rock, "opponent_shape" => :paper } }
  let(:draw_turn) { { "player_name" => "Rafa", "player_shape" => :rock, "opponent_shape" => :rock } }

  describe '#win' do 
    it 'win will be true if player choose rock and opponent choose scissors' do
        expect(win_turn.win?).to eq true
    end
  end
  describe '#lose' do 
    it 'lose will be true if player choose rock and opponent choose paper' do
        expect(lose_turn.lose?).to eq true
    end
  end
  describe '#draw' do 
    it 'draw will be true if player choose rock and opponent choose rock' do
        expect(draw_turn.draw?).to eq true
    end
  end
end
end