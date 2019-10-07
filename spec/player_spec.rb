require 'player'

RSpec.describe Player do

  describe '#name' do
    it 'returns the argument passed to it on initialization' do
      player = Player.new("Ashley")
      expect(player.name).to eq("Ashley")
    end
  end
  describe '#choice' do
    it 'returns what is passed as an argument' do
      player = Player.new
      player.choose("rock")
      expect(player.choice).to eq("rock")
    end
    it 'returns random choice if not passed an argument' do
      player = Player.new
      allow(player.list).to receive(:sample).and_return("paper")
      player.choose
      expect(player.choice).to eq("paper")
    end
  end
end
