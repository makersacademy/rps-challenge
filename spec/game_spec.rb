require 'game'

describe Game do
  let(:player) { double(:player, name: 'Jerry') }
  subject(:game) { described_class.new(player) }

  describe 'initialize' do
    it 'initializes with player' do
      expect(game.player.name).to eq 'Jerry'
    end
  end
end

