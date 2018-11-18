require 'game'

describe Game do
  let(:player_1) { double :player, name: 'Luisa', weapon: 'Rock'}
  let(:player_2) { double :player, name: 'Logan', weapon: 'Paper'}
  let(:game) { Game.new(player_1, player_2) }

  describe '#resolve_winner' do
    it 'Should return the player winner ' do
      expect(game.resolve_winner(player_1.weapon, player_2.weapon)).to eq player_2
    end

  end

  describe '#play' do

    it 'plays a game and return winner name' do
      game.resolve_winner(player_1.weapon, player_2.weapon)
      allow(player_2).to receive(:add_to_score).and_return(1)
      expect(game.play).to eq player_2.name
    end

  end

end
