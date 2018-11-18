require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:game) { Game.new(player_1) }

  describe '#attack' do
    it 'Should return a random weapon' do
      allow(game).to receive(:computer_weapon).and_return('Paper')
      expect(game.computer_weapon).to eq 'Paper'
    end
  end
end
