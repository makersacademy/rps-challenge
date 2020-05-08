require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  it 'has a random list of weapons' do
    expect(Computer::CHOICES).to include :rock, :paper, :scissors
  end

  it 'gets a #rand_choice from a list of weapons' do
    expect(Computer::CHOICES).to include(computer.rand_choice)
  end

end
