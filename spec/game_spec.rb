require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  describe '#initialize' do
    it 'creates a new player' do
      expect(game.player).to eq player
    end
  end

  describe '#choice selection' do
    it 'selects rock' do
      game.rock
      expect(game.selection).to eq 'Rock'
    end

    it 'selects paper' do
      game.paper
      expect(game.selection).to eq 'Paper'
    end

    it 'selects scissors' do
      game.scissors
      expect(game.selection).to eq 'Scissors'
    end
  end

  describe '#computer' do
    srand(3)
    it 'makes a selection' do
      game.computer
      expect(game.computer_selection).to eq 'Rock'
    end
  end

end
