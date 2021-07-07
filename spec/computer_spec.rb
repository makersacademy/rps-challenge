require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'return a move' do
    expect(computer).to respond_to(:action)
  end

  it 'should return a random move' do
    srand(678_909)
    expect(computer.action).to eq 'rock'
  end
end
