require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'return a random weapon' do
    expect([:rock, :paper, :scissors]).to include(computer.random_choice)
  end
end
