require './lib/player'

describe Player do
  subject(:bruce) { Player.new('Bruce') }

  describe '#name' do
    it 'states player name' do
      expect(bruce.name).to eq 'Bruce'
    end
  end
end
