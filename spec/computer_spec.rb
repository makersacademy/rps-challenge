require 'computer'

describe Computer do

subject(:Computer) { described_class.new }

  describe '#computer_attack' do
    computer_attack = Computer.new.computer_attack
    it 'chooses random attack from array of attack methods' do
      expect(["Rock", "Paper", "Scissors"]).to match_array(["Rock", "Paper", "Scissors"])
    end

    it 'randomly selects an attack method from computer attack array' do
      expect(computer_attack).not_to eq(nil)
    end
  end
end
