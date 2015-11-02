require 'player'

describe Player do
  subject(:jamie) { Player.new('jamie') }

  describe '#name' do
    it 'returns the name' do
      expect(jamie.name).to eq 'jamie'
    end
  end
end
