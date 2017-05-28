require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'is called Computer' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#choose_weapon' do
    it 'chooses rock, paper or scissors' do
      expect(computer.choose_weapon.type).to satisfy { |weapon| weapon == :rock || weapon == :paper || weapon == :scissors }
    end
  end
end
