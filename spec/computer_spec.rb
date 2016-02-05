require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'returns a move' do
    allow(computer).to receive(:move) { 'ROCK' }
    expect(computer.move).to eq 'ROCK'
    end
  end
end
