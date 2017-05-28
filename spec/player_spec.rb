require 'player'

describe Player do
  subject(:player) { described_class.new('Player Name') }
  let(:game) { double(:game, choose_weapon: '') }
  describe '#name' do
    it 'stores the name of the player' do
      expect(player.name).to eq 'Player Name'
    end
  end

  describe '#choice' do
    it 'stores the choice hand of the player' do
      player.stub(:choice).with('rock')
      expect(player.choice).to eq 'rock'
    end
  end
end
