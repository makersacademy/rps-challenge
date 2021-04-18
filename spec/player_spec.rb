require 'player'

describe Player do
  subject(:dom) { Player.new('Dom') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(dom.name).to eq 'Dom'
    end 
  end
end