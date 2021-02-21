require 'game'
# new class
# new instance
# pass in moves and get desired outcome
# expect computer = rock and player = scissor to eq...

describe Game do
  describe '#calculate_winner' do
    context 'player and computer have same move' do
      it "returns it's a draw" do
        game = Game.new('scissors', 'scissors')
        expect(game.calculate_winner).to eq("Computer chose scissors – it's a draw!")
      end
    end
  end
end
