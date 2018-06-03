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

  end
end
