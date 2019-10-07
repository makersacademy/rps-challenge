# frozen_string_literal: true

require 'game'

describe Game do
  let(:player1) { double :player1, name: 'Rach' }
  let(:player2) { double :player2, name: 'Nath' }
  let(:game) { Game.new(player1, player2) }

  it 'initializes with a player1' do
    expect(game.player1).to eq player1
  end

  it 'initializes with a player2' do
    expect(game.player2).to eq player2
  end

  describe '#single_player' do
    it 'stores player1s move' do
      move = 'Rock'
      allow(player1).to receive(:choose_move) { move }
      allow(player2).to receive(:random_move) { 'Scissors' }
      game.single_player(move)
      expect(game.player1_move).to eq move
    end

    it 'stores computers move' do
      move = 'Scissors'
      allow(player2).to receive(:random_move) { move }
      allow(player1).to receive(:choose_move) { 'Rock' }
      game.single_player('Rock')
      expect(game.player2_move).to eq move
    end
  end

  describe '#p1_move' do
    it 'stores player1 move' do
      allow(player1).to receive(:choose_move) { 'Rock' }
      expect(game.p1_move('Rock')).to eq 'Rock'
    end
  end

  describe '#p2_move' do
    it 'stores player2 move' do
      allow(player2).to receive(:choose_move) { 'Scissors' }
      expect(game.p2_move('Scissors')).to eq 'Scissors'
    end
  end

  describe '#draw' do
    it 'returns true if there is a draw' do
      move1 = 'Rock'
      move2 = 'Rock'
      allow(player1).to receive(:choose_move) { move1 }
      allow(player2).to receive(:random_move) { move2 }
      game.single_player(move1)
      expect(game.draw?).to eq true
    end

    it "returns false if there isn't a draw" do
      move1 = 'Rock'
      move2 = 'Scissors'
      allow(player1).to receive(:choose_move) { move1 }
      allow(player2).to receive(:random_move) { move2 }
      game.single_player(move1)
      expect(game.draw?).to eq false
    end
  end

  describe '#outcome' do
    it 'returns draw if tied' do
      move1 = 'Rock'
      move2 = 'Rock'
      allow(player1).to receive(:choose_move) { move1 }
      allow(player2).to receive(:random_move) { move2 }
      game.single_player(move1)
      expect(game.outcome).to eq :tie
    end
    it 'confirms player one won' do
      move1 = 'Rock'
      move2 = 'Scissors'
      allow(player1).to receive(:choose_move) { move1 }
      allow(player2).to receive(:random_move) { move2 }
      game.single_player(move1)
      expect(game.outcome).to eq :win
    end

    it 'confirms player two won' do
      move1 = 'Rock'
      move2 = 'Scissors'
      allow(player1).to receive(:choose_move) { move2 }
      allow(player2).to receive(:random_move) { move1 }
      game.single_player(move2)
      expect(game.outcome).to eq :lose
    end
  end

  describe '#rest' do
    it 'resets player1_move' do
      game.reset
      expect(game.player1_move).to eq nil
    end
    it 'resets player2_move' do
      game.reset
      expect(game.player2_move).to eq nil
    end
  end
end
