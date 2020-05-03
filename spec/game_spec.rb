require './lib/game'

describe Game do

  let(:game) { Game.new('Rock') }
  let(:game2) { Game.new('Scissors') }

  describe 'computer_move' do

    it 'is able to randomly select Rock, Paper or Scissors' do
      expect(game.move).to include(game.computer_move)
    end

  end

  describe 'winner' do

    before { game.instance_variable_set(:@computer_move, 'Scissors') }
    before { game2.instance_variable_set(:@computer_move, 'Rock') }

    it 'is able to declare the player as the winner' do
      expect(game.winner).to eq 'You win!'
    end

    it 'is able to declare the computer as the winner' do
      expect(game2.winner).to eq 'Computer wins.'
    end

  end

end
