require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { 'Toby' }

  describe '.name' do
    it 'returns the @name variable' do
      expect(player.name).to eq 'Toby'
    end
  end

  describe '.pick' do
    it 'players start with no pick' do
      expect(player.pick).to eq nil
    end

    it 'returns the players pick' do
      player.rock
      expect(player.pick).to eq 'rock'
    end
  end
end
