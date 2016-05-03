require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#name' do
    it 'has a default name' do
      expect(computer.name).to eq "super sity"
    end
  end

  describe '#choose_weapon' do
    it 'chooses an random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(computer.choose_weapon).to eq :rock
    end
  end

end
