require 'player'

describe Player do 
  subject(:player) { described_class.new(name)}
  let(:name) { "Bob" }
  


  describe 'Creates a new player object with name as an argument' do
    it 'returns the player name' do
      expect(player.name).to eq name
    end
  end
end