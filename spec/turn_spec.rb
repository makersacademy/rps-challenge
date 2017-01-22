require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Ferdinand", "player_utensil" => :paper, "bot_utensil" => :rock} }

  describe '#player_name' do
    it 'Returns player name' do
      expect(turn.player_name).to eq "Ferdinand"
    end
  end

  describe '#player_utensil' do
    it 'Returns player utensil' do
      expect(turn.player_utensil).to eq :paper
    end
  end

  describe '#bot_utensil' do
    it 'Returns the bots chosen utensil' do
      expect(turn.bot_utensil).to eq :rock
    end
  end

  context 'Result at the end of the game is' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Ferdinand", "player_utensil" => :scissors, "bot_utensil" => :rock} }
    let(:draw_options) { {"player_name" => "Ferdinand", "player_utensil" => :rock, "bot_utensil" => :rock} }

    describe '#win?' do
      it 'Returns true if player_utensil is :paper and bot_utensil is :rock' do
        expect(win_turn.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'Returns true if player_utensil is :scissors and bot_utensil is :rock' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'Returns true if player_utensil is :rock and bot_utensil is :rock' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end
