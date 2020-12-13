require 'player'

describe Player do
  let(:player_class) {described_class}
  let(:player) {described_class.new('Player 1')}

  describe '.new(name)' do
    it 'should accept a name parameter' do
      expect(player_class).to respond_to(:new).with(1).argument
    end
  end

  describe '.name' do
    it 'should return the player name' do
      expect(player.name).to eq 'Player 1'
    end
  end
end
