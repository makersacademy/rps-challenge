require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#weapon' do
    it 'chooses a random weapon from an array' do
      computer.choose
      expect(computer.weapon).to satisfy { |weapon| [:rock, :paper, :scissors].include? weapon }
    end
  end
end
