require 'player'

describe Player do

  context 'Play a game' do

    let(:game) { Game.new Player }

    it 'Can add a win to tally' do
      game.player_1.add_win
      expect(game.player_1.wins).to eq 1
    end

  end

end