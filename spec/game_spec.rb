require 'game'

describe Game do

  let(:player_1) { double :player, :move => 'rock', :name => 'Terry' }
  let(:player_2) { double :player, :move => 'scissors', :name => 'Mace' }

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:draw_game) { described_class.new(player_1, player_1) }
  subject(:loss_game) { described_class.new(player_2, player_1) }


  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#outcome' do
    it 'win' do
      expect(game.outcome).to eq "You win!"
    end

    it 'draw' do
      expect(draw_game.outcome).to eq "It's a draw."
    end

    it 'Loss' do
      expect(loss_game.outcome).to eq "You lose!"
    end
  end

  describe '#action' do
    it 'returns action when player 1 wins' do
      expect(game.action).to eq 'Rock smashes scissors.'
    end

    it 'returns action when player 2 wins' do
      expect(loss_game.action).to eq 'Rock smashes scissors.'
    end

    it 'returns action when its a draw' do
      expect(draw_game.action).to eq "&nbsp;"
    end
  end

  describe '#stats_to_update' do
    it 'updates player 1 wins counter' do
      game.update_stats
      expect(game.player_1_wins) == 1
    end

    it 'updates player 2 wins counter' do
      loss_game.update_stats
      expect(loss_game.player_2_wins) == 1
    end

    it 'updates player 2 wins counter' do
      draw_game.update_stats
      expect(draw_game.player_1_wins) == 0
    end
  end

end
