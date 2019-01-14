require 'game'

describe Game do

  let(:player_1) { double :player, :move => 'rock', :name => 'Terry' }
  let(:player_2) { double :player, :move => 'scissors', :name => 'Mace' }
  let(:player_no_move) { double :player, :move => '&nbsp;' }

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:draw_game) { described_class.new(player_1, player_1) }
  subject(:loss_game) { described_class.new(player_2, player_1) }
  subject(:no_move_game) { described_class.new(player_no_move, player_no_move) }

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
    it 'shows line break at start of game' do
      expect(no_move_game.outcome).to eq '&nbsp;'
    end

    context '1 Player' do

      it 'shows a win' do
        expect(game.outcome).to eq "You win!"
      end

      it 'shows a draw' do
        expect(draw_game.outcome).to eq "It's a draw."
      end

      it 'shows a loss' do
        expect(loss_game.outcome).to eq "You lose!"
      end
    end

    context '2 Players' do

      it 'Shows player 1 Wins' do
        game.no_players = 2
        expect(game.outcome).to eq "Terry wins!"
      end

      it 'shows a draw' do
        draw_game.no_players = 2
        expect(draw_game.outcome).to eq "It's a draw."
      end

      it 'shows player 2 wins' do
        loss_game.no_players = 2
        expect(loss_game.outcome).to eq "Terry wins!"
      end
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

  describe '#update_stats' do
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

  describe '#show_results' do
    it 'returns true when both players have made a move' do
      game.move_number = 2
      expect(game.show_results?).to eq true
    end

    it 'returns false when both players have not made a move' do
      game.move_number = 1
      expect(game.show_results?).to eq false
    end
  end

end
