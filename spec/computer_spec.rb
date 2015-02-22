require 'computer'

describe Computer do  

it 'can pick a weapon' do 
	computer = Computer.new
	computer.pick_weapon
	expect(computer).to_not be_nil	
end


end