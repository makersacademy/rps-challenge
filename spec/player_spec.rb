require 'player'

describe Player do

  context 'Play a game' do

    let(:game) { Game.new Player }

    it 'can choose rock, paper or scissors' do
      expect(game.player_1.choose 'rock').to eq 'rock'
    end

    it 'is unable to choose anything other than rock, paper or scissors' do
      expect{ game.player_1.choose 'potato' }.to raise_error 'You must play with rock, paper or scissors!'
    end

    it 'is unable to choose anything other than rock, paper or scissors' do
      expect{ game.player_1.choose 'potato' }.to raise_error 'You must play with rock, paper or scissors!'
    end

  # Test for computer's random generated response.

  end

end