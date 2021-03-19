require 'rps'

describe RPS do
  describe '#new' do
    it 'stores the players name' do
      game = RPS.new("Wendy")
      expect(game.player).to eq("Wendy")
    end
  end
end
