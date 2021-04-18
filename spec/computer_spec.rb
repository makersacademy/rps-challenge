require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'allows to select a random weapon' do
    expect([:rock, :paper, :scissors, :lizard, :spock]).to include(computer.cpu_pick)
  end
end
