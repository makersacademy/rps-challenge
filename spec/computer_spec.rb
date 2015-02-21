require 'computer'

describe Computer do  

it 'can pick rock, paper, or scissors' do 
	computer = Computer.new
	computer.pick_rps
	expect(computer).to_not be_nil	
end


end