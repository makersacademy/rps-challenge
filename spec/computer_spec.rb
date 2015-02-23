require 'computer'

describe Computer do
	
	it 'should select a random option' do
		computer = Computer.new
		expect(computer.pick).to eq computer.answer
	end

end