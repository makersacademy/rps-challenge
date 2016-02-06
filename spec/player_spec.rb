require 'player'

describe Player do 
  subject(:player) { described_class.new(name)}
  let(:name) { "Bob" }
  let(:hand) { "Rock" }

  describe '#name' do
    it 'Returns the player name' do
      expect(player.name).to eq name
    end
  end

  describe '#choice' do
    it 'Stores and returns the players hand' do
      player.choice = hand
      expect(player.choice).to eq hand
    end
  end
end