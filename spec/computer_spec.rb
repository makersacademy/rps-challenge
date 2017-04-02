require 'computer'

describe Computer do
subject(:computer) {described_class.new}

  it 'selects weapon from choices' do
    computer = double(:computer, weapon: :rock)
    expect(computer.weapon).to eq :rock
  end


end
