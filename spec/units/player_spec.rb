require_relative '../../game'

describe Player do
  player = Player.new("Caesar")
  describe '#turn' do
    it 'responds to turn' do
      expect(player).to respond_to(:turn)
    end
  end
  describe '#name' do
    it 'responds to name' do
      expect(player.name).to eq "Caesar"
    end
  end
end
