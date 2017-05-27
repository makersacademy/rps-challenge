require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choose_weapon' do
    it 'chooses rock, paper or scissors' do
      srand 1234
      expect(computer.choose_weapon).to eq :scissors
      expect(computer.choose_weapon).to eq :paper
      expect(computer.choose_weapon).to eq :rock
    end
  end
end
