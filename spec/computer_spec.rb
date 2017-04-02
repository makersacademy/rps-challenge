require 'computer'

describe Computer do
subject(:computer) {described_class.new}

  it 'selects weapon from choices' do
    computer = double(:computer, choice: :rock)
    expect(computer.choice).to eq :rock
  end


end
