require 'computer'

describe Computer do 

subject(:computer){described_class.new}

	it 'selects a random player' do 
	allow(computer).to receive(:play).and_return('Paper')
	expect(computer.play).to eq "Paper"
	end


end