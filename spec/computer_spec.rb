require 'computer'

describe Computer do
  subject (:computer) {described_class.new('Computer')}

  describe '#weapon' do
    it 'chooses a weapon' do
      allow(computer).to receive(:weapon) {:rock} #redundant test!!
      expect(computer.weapon).to eq(:rock)
    end
  end
end



