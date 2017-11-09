require 'game'

describe Game do

  subject(:game) { Game.new_game('Ricky Martin') }

  context 'Initialization' do
    it 'Initializes a new player eq to arg' do
      expect(game.player_1).to eq 'Ricky Martin'
    end
  end

end
