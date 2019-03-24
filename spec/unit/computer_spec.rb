require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'return a move' do
    expect(computer).to respond_to(:computer_move)
  end

  it 'should return a random move' do
    srand(678_909)
    expect(computer.computer_move).to eq 'Rock'
  end
end
