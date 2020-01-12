require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'randomly picks a move' do
    expect([:rock, :paper, :scissors]).to include computer.move
  end
end