require './models/game.rb'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#game_over' do

    it 'decides the outcome of the game' do
      expect(game.game_over).to eq "Winner"
    end

  end
  

end
