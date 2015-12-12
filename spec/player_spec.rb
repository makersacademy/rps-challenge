require 'player'

describe Player do
  subject(:player) { described_class.new('Ruby') }

  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Ruby'
    end
  end

  context '#choice' do
    it 'stores the players choice and returns it' do
      player.choice = 'Paper'
      expect(player.choice).to eq 'Paper'
    end
  end
end
