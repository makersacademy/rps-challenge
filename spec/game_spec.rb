require 'game'

describe Game do
  let(:player){ double :player }
  let(:game){ Game.new(player) }
  let(:rps){ game.rps }

  context 'both called paper' do
    before do
      allow(rps).to receive(:sample).and_return('paper')
      allow(player).to receive(:tie)
    end

    it 'players select one of the rps option' do
      expect(game.player_selection).to eq('paper')
      expect(game.ia_selection).to eq('paper')
    end

    it 'calls a tie' do
      expect(game.who_wins?).to eq("It's a tie!")
    end
  end

  context 'player wins' do
    before do
      allow(game).to receive(:player_move).and_return('rock')
      allow(game).to receive(:ia_move).and_return('scisors')
      allow(player).to receive(:win)
    end
    
    it 'makes the player win' do
      expect(game.who_wins?).to eq('You win!')
    end
  end

  context 'player loses' do
    before do
      allow(game).to receive(:player_move).and_return('rock')
      allow(game).to receive(:ia_move).and_return('paper')
      allow(player).to receive(:lose)
    end

    it 'makes the player lose' do
      expect(game.who_wins?).to eq('You lose.')
    end
  end
end