require 'computer'

describe Computer do

	subject(:computer) { Computer.new }

	describe '#computer' do
  	it 'returns the symbol chosen by the computer' do
		  #expect([:Rock, :Paper, :Scissors]).to include(computer.random_select)
		  #instead of the above expect include we can stub out random:
		  allow(Computer::WEAPONS).to receive(:sample).and_return(:rock)
		  expect(computer.random_select).to eq :rock
		end
	end
end