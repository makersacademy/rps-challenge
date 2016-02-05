require 'player'

describe Player do
  subject(:player) { described_class.new ('Michael') }
  describe 'initialize' do
    it 'creates a new player with the name passed' do
      expect(player.name).to eq 'Michael'
    end
  end
end
