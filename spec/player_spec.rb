require 'player'

describe Player do
  subject(:rianne) { Player.new('Rianne') }

  describe '#name' do
    it 'returns the name' do
      expect(rianne.name).to eq 'Rianne'
    end
  end
end
