require 'cpu_player'

describe CpuPlayer do
  subject(:cpu_player) { described_class.new }

  describe '#name' do
    it 'returns the CPU name' do
      expect(cpu_player.name).to eq('CPU')
    end
  end

  describe '#weapon' do
    it 'calls sample on the weapons array' do
      expect(Game::WEAPONS).to receive(:sample)
      cpu_player.weapon
    end

    it 'returns one of the weapons' do
      srand 0
      weapon = Game::WEAPONS.sample
      srand 0
      expect(cpu_player.weapon).to eq weapon
    end
  end
end
