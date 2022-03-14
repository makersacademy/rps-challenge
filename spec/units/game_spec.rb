require 'game'

describe Game do

  subject(:game) { Game.new }
  let(:player_double) { double(:player, :name => 'Bob') }
  let(:player1_double) { double(:player, :choice => 'rock')}
  let(:player2_double) { double(:player, :choice => 'scissors')}
  
  context 'creating a new game' do
    it 'creates a new game with 0 players' do
      expect(game.players.size).to eq 0
    end
    
    it 'initialises with turn equalling zero' do
      expect(game.turn_manager.turn).to eq 0
    end
  end

  context 'adding a new player' do
    it 'increases the player array by 1' do
      expect { game.new_player('Bob') }.to change { game.players.count }.by(1) 
    end
  end

  context 'reseting players' do
    it 'resets players to empty array' do
      allow(Player).to receive(:new).and_return(player_double)
      game.new_player('Bob')
      game.reset_players
      expect(game.players).to eq []
    end
  end

  context 'result message' do
    it 'returns draw message' do
      game.determine_winner('rock', 'rock')
      expect(game.result_message).to eq 'You both selected the same option - the game is a draw!'
    end

    it 'returns draw message' do
      allow(Player).to receive(:new).and_return(player_double)
      game.new_player('Bob')
      game.new_player('Vic')
      game.determine_winner('rock', 'paper')
      expect(game.result_message).to include 'The winner is'
    end
  end

end
