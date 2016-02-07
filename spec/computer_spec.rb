require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapons) { [:rock, :paper, :scissors]}

  describe '#weapon' do
    it 'returns a weapon' do
      expect(computer.weapon).to satisfy { |v| weapons.include? v }
    end
  end
end