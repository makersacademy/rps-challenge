require 'computer'

describe Computer do

  describe '#weapon' do

    it{ is_expected.to respond_to(:weapon) }

    it 'should select a random weapon from weapon constant' do
      computer = double(:computer, weapon: 'SCISSORS')
      # allow(stub).to recieve(:weapon).and_return('SCISSORS')
    expect(computer.weapon).to eq('SCISSORS')
    end
  end

end
