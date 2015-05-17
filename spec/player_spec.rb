require 'player'

describe Player do

  context 'Play a game' do

    let(:game) { Game.new Player }

    it 'can add a win to tally' do
      game.player_1.add_win
      expect(game.player_1.wins).to eq 1
    end

  # Test for computer's random generated response.

  end

end