require 'game'

describe Game do
let(:game) { described_class.new(roxu, computer)}
let(:roxu) { double :roxu, weapon: 'rock'}
let(:computer) { double :computer, weapon: 'rock'}

  describe '#initialize' do
    it 'initializes a new game with a new player' do
      expect(game.player1).to eq(roxu)
    end
    it 'initializes a new game with a computer' do
      expect(game.computer).to eq(computer)
    end
  end

  describe '#results' do
    it 'returns a draw message if weapons are the same'do
      expect(game.results).to eq "It's a draw"
    end
  end

end
