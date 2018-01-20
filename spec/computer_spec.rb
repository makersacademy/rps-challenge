require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'chose a move on instantiation' do
    expect([:Rock, :Paper, :Scissors]).to include computer.move
  end
end
