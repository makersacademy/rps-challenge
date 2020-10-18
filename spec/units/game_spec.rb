require 'game.rb'

describe Game do
  subject(:game) { Game.new }

  it { is_expected.to respond_to :bot_move }

  describe 'calculating the winner' do
    context 'player 1 chooses rock and computer output is paper' do
      it 'returns player 1 loses' do
        allow(game).to receive(:bot_move) { "paper" }
        expect(game.winner("rock")).to eq("The computer wins!")
      end
    end
    context 'player 1 chooses rock and computer output is scissors' do
      it "returns it's a draw" do
        allow(game).to receive(:bot_move) { "scissors" }
        expect(game.winner("rock")).to eq("Player 1 wins!")
      end
    end 
    context 'player 1 chooses rock and computer output is rock' do
      it "returns it's a draw" do
        allow(game).to receive(:bot_move) { "rock" }
        expect(game.winner("rock")).to eq("It's a draw!")
      end
    end
  end
end