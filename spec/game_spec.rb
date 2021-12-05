require 'game'

describe Game do
  let(:player1) { double('player1', :name => 'player1', :read_move => 'ROCK') }
  let(:player2) { double('player2', :name => 'player2', :read_move => 'PAPER') }
  let(:player3) { double('player3', :name => 'player3', :read_move => 'PAPER') }  
  let(:game) { Game.new(player1, player2) }

  context '#initialize' do
    it 'holds players in an array called by an instance variable' do
      expect(game.players[0]).to eq player1
    end
  end

  # this test doesn't feel great... is there a better way/ should I be testing array.sample at all?
  context '#generate_move' do
    it 'randomly generates a move' do
      expect(game.generate_move).to be_a String
    end
  end

  context '#calculate_result' do
    it 'returns the winning player' do
      expect(game.return_winner).to eq "player2 wins!"
    end

    it 'returns a draw when players moves are equal' do
      game = Game.new(player2, player3)

      expect(game.return_winner).to eq "It's a draw!"
    end
  end
end
