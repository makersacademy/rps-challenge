require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:weapons) { double :weapons }

  describe '#weapon_choice' do
    it 'returns the name of the chosen weapon' do
      expect([:rock, :paper, :scissors]).to include computer.weapon_choice
    end
  end

end
