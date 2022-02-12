describe Results do

  subject(:result) { described_class.new("Ben", :player_move, :cpu_move)}

  describe 'computer move stored' do
    it 'should confirm cpu move stored' do
      allow(result).to receive(:cpu_move) { "Rock" }
      expect(result.cpu_move).to eq("Rock")
    end
  end

  describe 'confirm results' do
    it 'should result in a draw if player and cpu select same move' do
      allow(result).to receive(:player_move).and_return(:Rock)
      allow(result).to receive(:cpu_move).and_return(:Rock)
      expect(result.confirm_result).to eq "Draw"
    end
  end

  describe 'confirm results' do
    it 'should result in a win if player beats cpu' do
      allow(result).to receive(:player_move).and_return(:Rock)
      allow(result).to receive(:cpu_move).and_return(:Scissors)
      expect(result.confirm_result).to eq "Win"
    end
  end

  describe 'confirm results' do
    it 'should result in a win if player beats cpu' do
      allow(result).to receive(:player_move).and_return(:Paper)
      allow(result).to receive(:cpu_move).and_return(:Scissors)
      expect(result.confirm_result).to eq "Lose"
    end
  end
end