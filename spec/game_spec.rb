require './models/game.rb'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#set_move' do

    it 'sets the player move' do
      allow(player_1).to receive(:move).with("Paper")
      game.set_move(player_1, "Paper")
    end

  end

  describe '#game_over' do

    it 'decides the outcome of the game' do
      expect(game.game_over).to eq "Winner"
    end

  end
  

end
