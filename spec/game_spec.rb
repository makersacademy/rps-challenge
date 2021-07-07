require 'game'

describe Game do

  let(:game) { described_class.new('Freddie') }

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(game.player_name).to eq 'Freddie'
    end
  end

  describe '#human_move' do
    it 'returns the human move' do
      game.selection('rock')
      expect(game.human_move).to eq 'rock'
    end
  end

  #can't work out how to test random method
  # describe '#computer_move' do
  #   it 'returns a random computer move' do
  #     game.selection('rock')
  #     expect(game.computer_move).to eq 'rock' || 'paper' || 'scissors'
  #   end
  # end

  describe '#selection' do
    it 'can be called' do
      game.selection('rock')
      expect(game.human_move).to eq 'rock'
    end
  end
  describe '#calculate' do
    it 'returns a result' do
      game.selection('rock')
      expect(game.calculate('scissors')).to eq 'You win!'
    end
  end
end