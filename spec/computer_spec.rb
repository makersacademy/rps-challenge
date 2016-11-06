require 'computer'

describe Computer do
  subject(:computer) { described_class.new}

    it 'has a name' do
      expect(computer.name).to eq "Enigma"
    end

    it 'has a weapon' do
      computer.weapon_choice
      expect(computer.weapon).to be_a(Symbol)
    end


end
