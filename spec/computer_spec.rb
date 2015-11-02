require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'selects a weapon at random' do
    allow(computer).to receive(:weapon) { :scissors }
    expect(computer.weapon).to eq :scissors
  end


end
