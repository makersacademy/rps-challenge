require_relative '../lib/game'

describe Game do
  
  describe '#turn' do
    it 'returns with Win' do
      player = Player.new('Peter')
      game = Game.new

      allow(game).to receive(:generate_opponent_choice).and_return('Rock')

      expect(game.turn('Paper')).to eq 'Win'
    end

    it 'returns with Lose' do
      player = Player.new('Peter')
      game = Game.new

      allow(game).to receive(:generate_opponent_choice).and_return('Paper')

      expect(game.turn('Rock')).to eq 'Lose'
    end

    it 'returns with Draw' do
      player = Player.new('Peter')
      game = Game.new

      allow(game).to receive(:generate_opponent_choice).and_return('Scissors')

      expect(game.turn('Scissors')).to eq 'Draw'
    end
  end

end
