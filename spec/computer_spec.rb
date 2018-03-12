require 'computer'

describe Computer do
  subject(:computer) { described_class.new('Computer') }
  let(:weapons) { [:rock, :paper, :scissors] }

  context 'when initialized' do
    it 'passes a string to a name attribute' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#random_weapon' do
    it 'picks a random valid weapon' do
      computer.random_weapon
      expect(weapons).to include computer.weapon
    end
  end
end
