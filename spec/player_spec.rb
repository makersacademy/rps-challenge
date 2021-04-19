require 'player'

describe Player do
  subject(:tiago) {Player.new('Tiago')}
  #subject(:mittens)  {Player.new('Mittens')}
  describe '#name' do
    it 'returns the name' do
      expect(tiago.name).to eq 'Tiago'
    end
  end
end