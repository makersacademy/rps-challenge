require 'game'

describe Game do
  let(:player1) { double('player1', :name => 'player1', :move => 'ROCK') }
  let(:player2) { double('player2', :name => 'player2', :move => 'PAPER') }
  let(:player3) { double('player3', :name => 'player3', :move => 'PAPER') }  
  let(:game) { Game.new(player1, player2, '2 player') }

  context '#initialize' do
    it 'holds Player instances in an array Game instance variable' do
      expect(game.players).to eq [player1, player2]
    end

    it 'holds player mode in an instance variable' do
      expect(game.mode).to eq '2 player'
    end
  end

  context '#generate_move' do
    it 'randomly generates a move' do
      expect(['ROCK', 'PAPER', 'SCISSORS']).to include(game.generate_move)
    end
  end

  context '#calculate_result' do
    it 'returns the winning player' do
      expect(game.return_winner).to eq "player2 wins!"
    end

    it 'returns a draw when players moves are equal' do
      game = Game.new(player2, player3, '2 player')

      expect(game.return_winner).to eq "It's a draw!"
    end
  end

  context '#update_move' do
    it 'updates Player instance variables to store chosen move' do
      expect(player1).to receive(:move)
      
      game.update_move('ROCK')
    end
  end
end
