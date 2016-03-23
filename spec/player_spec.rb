require 'player'

describe Player do
  subject(:claudia){Player.new('Claudia')}

  describe '#name' do
    it 'returns the name' do
      expect(claudia.name).to eq 'Claudia'
    end
  end

end
