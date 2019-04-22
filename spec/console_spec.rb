require 'console'

describe Console do
  subject(:console) { Console.new }


    it 'gives a move' do
      expect(console).to respond_to(:move)
    end

  # describe '#random_move' do
    it 'returns random move' do
      srand(678909)
      expect(console.move).to eq 'Rock'
    end
  end
