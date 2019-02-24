require 'player'

describe Player do
  subject(:winston) { Player.new('Winston') }

  describe '#name' do
    it 'returns the name' do
      expect(winston.name).to eq 'Winston'
    end
  end
end
