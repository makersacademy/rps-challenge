require 'computer'

describe Computer do

	subject(:computer) { Computer.new }

	describe '#computer' do
  	it 'returns the symbol chosen by the computer' do
		  expect([:Rock, :Paper, :Scissors]).to include(computer.random_select)
		end
	end
end