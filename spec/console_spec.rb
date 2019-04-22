require 'console'

describe Console do
  subject(:console) { Console.new }

  describe '#move' do
    it 'gives a move' do
      expect(console).to respond_to(:move)
    end
  end

  describe '#random_move' do
    it 'returns random move' do
      expect(console.move).to include(console.random_move)
    end
  end
end
