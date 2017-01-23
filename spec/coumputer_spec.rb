require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:options) { [:rock, :paper, :scissors, :spock, :lizard] }

  it 'returns random variable within class' do
    expect(options).to include(computer.weapon)
  end
end
