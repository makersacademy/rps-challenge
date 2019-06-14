require 'game'

describe Game do

  let(:player_double) { double:'player' }
  let(:player_class_double) { double:'player_class' }
  subject(:game) { Game.new(player_class_double) }

  describe '#create_player' do
    it 'creates a new instance of player and saves it as an instance variable' do
      allow(player_class_double).to receive(:new).with('Mama').and_return(player_double)
      game.create_player('Mama')
      expect(game.player).to eq(player_double)
    end
  end
end