require 'Turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Louis", "player_shape" => :rock, "opponent_shape" => :scissors } }

  subject(:win_turn) { turn }
  subject(:lose_turn) { described_class.new(lose_options) }
  subject(:draw_turn) { described_class.new(draw_options) }

  let(:lose_options) { {"player_name" => "Louis", "player_shape" => :rock, "opponent_shape" => :paper } }
  let(:draw_options) { {"player_name" => "Louis", "player_shape" => :rock, "opponent_shape" => :rock } }

  describe "#player_name" do
    it 'returns player name' do
      expect(turn.player_name).to eq 'Louis'
    end
  end

  describe "#player_shape" do
    it 'returns player shape' do
      expect(turn.player_shape).to eq :rock
    end
  end

  describe "#opponent_shape" do
    it 'returns opponent shape' do
      expect(turn.opponent_shape).to eq :scissors
    end
  end

  describe '#win?' do
    it 'returns true if player_shape is :rock and opponent_shape is :scissors' do
      expect(win_turn.win?).to be true
    end
  end

  describe '#lose?' do
    it 'returns true if player_shape is :rock and opponent_shape is :paper ' do
      expect(lose_turn.lose?).to be true
    end
  end

  describe '#draw?' do
    it 'returns true if player_shape is :rock and opponent_shape is :rock' do
      expect(draw_turn.draw?).to be true
    end
  end
end
