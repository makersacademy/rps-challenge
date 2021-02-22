require 'game'

describe Game do
  describe '#calculate_winner' do
    context 'player and computer have same move' do
      it "returns it's a draw" do
        game = Game.new('scissors', 'scissors')
        expect(game.calculate_winner).to eq("Computer chose scissors – it's a draw!")
      end
    end
    context 'computer has winning move' do
      it 'returns you lose' do
        game = Game.new('scissors', 'rock')
        expect(game.calculate_winner).to eq(game.computer_wins)
      end
    end

  end
end
