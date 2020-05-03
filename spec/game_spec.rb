require './lib/game'

describe Game do
  let(:game) { Game.new('Rock') }

  describe 'computer_move' do
    it 'is able to randomly select Rock, Paper or Scissors' do
      expect(game.move).to include(game.computer_move)
    end
  end

  describe 'winner' do
    before { game.instance_variable_set(:@computer_move, 'Scissors') }
    it 'is able to declare the player as the winner' do
      expect(game.winner).to eq 'You win!'
    end
  end
end
