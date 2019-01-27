require 'game'

RSpec.describe Game do

  let(:player1) { double('Player1') }
  let(:player2) { double('Player2') }
  let(:game) { Game.new(player1, player2) }
  
  it 'initializes with 2 players' do
    expect(game.players).to eq([player1, player2])
  end

  it 'can take a move from player1' do
    allow(player1).to receive(:make_move).and_return('rock')
    move = 'rock'
    expect(game.make_move(player1, move)).to eq('rock')
  end

  it 'can save a move made by player1' do
    allow(player1).to receive(:make_move).and_return('rock')
    game.make_move(player1, 'rock')
    expect(game.player1_move).to eq('rock')
  end

  describe '#winner' do
    it 'can decide on a winner' do
      game.instance_variable_set(:@player1_move, 'rock')
      game.instance_variable_set(:@player2_move, 'scissors')
      game.calculate_winner
      expect(game.winner).to eq(player1)
    end
  end

  describe '#winner_logic' do
    it 'can calculate the winner' do
      game.winner_logic(2, 1)
      expect(game.winner).to eq(player2)
    end
  end

end
