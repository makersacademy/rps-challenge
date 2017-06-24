require 'player'

describe Player do
  subject(:player) { described_class.new('Momo') }
  
  describe 'attributes' do
    it 'responds to name' do
      expect(player.name).to eq 'Momo'
    end
  end
  
  
  
end
