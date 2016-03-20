require 'computer'

describe Computer do
  subject(:computer){described_class.new}

  describe '#initialze' do
    it "is initialized with a name" do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#computer_play' do
    it 'samples weapons from array' do
      allow(computer).to receive(:computer_play).and_return(:rock)
      expect(computer.computer_play).to eq :rock
    end
  end

end
