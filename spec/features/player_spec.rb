require './lib/player'

describe Player do
  subject(:player) { described_class.new }
  describe '#weapon' do
    it "raises error" do
      expect{ (Game::OPTIONS).exclude? player.weapon(Game::OPTIONS) }.to raise_error('not a possible weapon')
    end
  end
end
