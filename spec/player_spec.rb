require 'player'

describe Player do
  subject(:some_player) { described_class.new("Meerkat") }

    it 'stores players name' do
      new_player= Player.new("Meerkat")
      expect(some_player.name).to eq new_player.name
    end
end