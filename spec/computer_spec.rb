require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'makes a random move' do
    expect(Computer::MOVES).to include computer.move
    end
  end
end