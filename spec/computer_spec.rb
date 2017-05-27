require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'allow Computer to choose a weapon' do
    allow(computer).to receive(:weapon) { :scissors }
    expect(computer.weapon).to eq :scissors
  end
  
end
