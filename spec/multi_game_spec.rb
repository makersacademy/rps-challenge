require_relative '../lib/player'

describe MultiGame do
  player1 = Player.new("Justyna")
  player2 = Player.new("Igor")
  subject(:multi_game) { described_class.new([player1, player2]) }

  describe "#calculate_result" do
    it 'calculates the draw' do
      expect(multi_game.calculate_result("rock", "rock")).to eq "Draw!"
    end
    it 'calculates the win' do
      expect(multi_game.calculate_result("rock", "scissors")).to eq "Justyna won"
    end
  end
end
