require 'player'

describe Player do
  subject(:terry) { Player.new('Terry') }

  describe '#name' do
    it 'returns the name' do
      expect(terry.name).to eq 'Terry'
    end
  end
end
