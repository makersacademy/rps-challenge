require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapons) { [:rock, :paper, :scissors] }

  describe '#weapon' do
    it 'picks a random valid weapon' do
      computer.weapon
      expect(weapons).to include computer.weapon
    end
  end
end
