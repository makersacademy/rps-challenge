require "game"

describe Game do
  subject(:game) { described_class.new("gadiza") }
  before do
    allow(game).to receive(:computer_choice).and_return("Paper")
  end

  describe '#result' do

    it 'should let Paper win against Rock' do
      game.player_move('Rock')
      game.computer_choice
      expect(game.result).to eq("Paper beats Rock, You Lose!")
    end
    it 'should let Scissors win against Paper' do
      game.player_move('Scissors')
      game.computer_choice
      expect(game.result).to eq("Scissors beats Paper, You Win!")
    end
    it 'Paper against Paper is a draw' do
      game.player_move('Paper')
      game.computer_choice
      expect(game.result).to eq("It's a Draw!")
    end

  end
end
