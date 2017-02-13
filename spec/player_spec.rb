require 'player'

describe Player do

  subject(:player) { described_class.new(:name) }

  context '#initializes with a player name' do
    it 'initializes with a player name' do
      expect(player.name).to eq :name
    end
  end

  context '#choose' do
    it 'allows player to choose rock paper or scissors' do
      expect(player.choose('rock')).to eq :rock
    end
  end

end
