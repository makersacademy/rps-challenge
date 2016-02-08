require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'returns a move' do
    allow_any_instance_of(Array).to receive(:sample).and_return('ROCK')
    expect(computer.move).to eq 'ROCK'
    end
  end
end
