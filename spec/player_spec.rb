require 'player'

describe Player do
  subject(:some_player) { described_class.new("Meerkat") }

    it 'holds players name' do
      player= Player.new("Meerkat")
      expect(some_player.name).to eq player.name
    end
end