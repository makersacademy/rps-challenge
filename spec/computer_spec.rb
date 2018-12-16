require 'app'

describe Computer do
  
  context 'New computer class' do

    it 'Returns the computers weapon' do
      expect(subject).to respond_to :choose_weapon
    end

  end

  context 'Weapon choices' do

    computer = Computer.new

    it 'includes Rock' do
      allow(computer).to receive(:weapon) { :rock }
      expect(computer.weapon).to eq :rock
    end

    it 'includes Scissors' do
      allow(computer).to receive(:weapon) { :scissors }
      expect(computer.weapon).to eq :scissors
    end

    it 'includes Paper' do
      allow(computer).to receive(:weapon) { :paper }
      expect(computer.weapon).to eq :paper
    end
  
  end

end
