require 'declare'

describe Declare do
  describe "#winner" do
    it 'returns the name of the winner' do
      dec_win = Declare.new("a", "Rock", "b", "Scissors")
      expect(dec_win.winner).to eq 'a'
    end
  end

  describe "#winning_move" do
    it 'returns the winning move' do
      dec_mov = Declare.new("a", "Rock", "b", "Scissors")
      expect(dec_mov.winning_move).to eq 'Rock'
    end
  end

  describe "#draw?" do
    it 'returns true if draw and false if not' do
      dec_draw = Declare.new("a", "Rock", "b", "Rock")
      expect(dec_draw.draw?).to eq true
      dec_nodraw = Declare.new("a", "Rock", "b", "Scissors")
      expect(dec_nodraw.draw?).to eq false
    end
  end
end
