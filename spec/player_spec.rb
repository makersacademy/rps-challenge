require 'player'

describe Player do

subject(:tam) { Player.new('Tam') }

  describe '#name' do
    it 'returns the name' do
      expect(tam.name).to eq 'Tam'
    end
  end
end
