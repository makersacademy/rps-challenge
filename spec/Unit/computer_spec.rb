require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
	
  describe '#weapon' do

  	it 'returns a random weapon' do
  	  expect(Computer::WEAPON).to include computer.weapon
  	end

  end

end