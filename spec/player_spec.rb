require 'player'

describe Player do
  let(:name) {double :name}
  let(:choice) {double :choice}
  describe '#name' do
    it 'Should return player name' do
      player = Player.new(name)
      expect(player.name).to eq(name)
    end
  end
  describe '#name' do
    it 'Should return player name' do
      player = Player.new(name)
      expect(player.name).to eq(name)
    end
  end
  describe '#make_choice' do
    it 'Should return player choice' do
      player = Player.new(name)
      expect(player.make_choice(choice)).to eq(choice)
    end
  end
end
