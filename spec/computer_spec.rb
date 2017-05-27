require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'allow Computer to choose a weapon' do
    expect(computer.weapon).to satisfy { |w| w == :scissors || w == :rock || w == :paper }
  end
  
end
