require 'game'

describe Game do
  context 'players draw' do
    let(:player1)   { double(:player_1, move: "Rock") }
    let(:player2)   { double(:player_2, move: "Rock") }
    let(:game)      { Game.new(player1, player2) }

    it 'should provide player 1' do
      expect(game.player_1).to eq(player1)
    end

    it 'should provide player 2' do
      expect(game.player_2).to eq(player2)
    end

    it 'player makes a move' do
      expect(player1).to receive(:assigned)
      game.assign(player1, "Rock")
    end

    it 'determines if there is a draw' do
      expect(game.winner).to eq("It was a draw!")
    end
  end

  context 'player 1 wins' do
    let(:player1)   { double(:player_1, move: "Rock", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Scissors", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'player 1 wins with Rock' do
      expect(game.winner).to eq("#{game.player_1.name} wins!")
    end

    let(:player1)   { double(:player_1, move: "Paper", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Rock", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'player 1 wins with Paper' do
      expect(game.winner).to eq("#{game.player_1.name} wins!")
    end

    let(:player1)   { double(:player_1, move: "Scissors", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Paper", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'Player 1 wins with Scissors' do
      expect(game.winner).to eq("#{game.player_1.name} wins!")
    end
  end

  context 'player 2 wins' do

    let(:player1)   { double(:player_1, move: "Scissors", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Rock", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'player 2 wins with Rock' do
      expect(game.winner).to eq("#{game.player_2.name} wins!")
    end

    let(:player1)   { double(:player_1, move: "Rock", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Paper", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'player 2 wins with Paper' do
      expect(game.winner).to eq("#{game.player_2.name} wins!")
    end

    let(:player1)   { double(:player_1, move: "Paper", name: "Bob") }
    let(:player2)   { double(:player_2, move: "Scissors", name: "Susan") }
    let(:game)      { Game.new(player1, player2) }

    it 'Player 2 wins with Scissors' do
      expect(game.winner).to eq("#{game.player_2.name} wins!")
    end
  end
end
