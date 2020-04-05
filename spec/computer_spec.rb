require 'computer'

describe Computer do 

  describe '#computer_attack_type' do  
    computer = Computer.new 
      it "returns 'Rock', 'Scissors' or 'Paper'" do
        expect(['Rock','Paper', 'Scissors']).to include(computer.select_object)
    end 
  end 
end 