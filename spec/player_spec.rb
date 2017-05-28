require 'player'
require 'game'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { 'name' }
  let(:weapons) { ['rock', 'paper', 'scissor' ] }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq name
    end
  end

  describe '#weapon' do
    it 'can select a weapon' do
      expect(Game::WEAPONS).to include(player.weapon(weapons.sample))
    end
  end
end

