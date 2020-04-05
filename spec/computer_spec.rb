require 'computer'

describe Computer do 

  describe '#computer_attack_type' do  
    computer = Computer.new 
      it 'returns rock or scissors' do
        expect(['rock','paper', 'scissors']).to include(computer.select_object)
    end 
  end 
end 