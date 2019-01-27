require 'middle'
require 'player'
require 'computer'

RSpec.describe Middle do
  let(:player1) { double('player1') }
  let(:player2) { double('player2') }
  let(:real_player) { Player.new('Wilson') }
  let(:computer) { Computer.new('HAL') }

  it 'can create a new game instance and store it' do
    Middle.create_game(player1, player2)
    expect(Middle.game_instance.players).to eq([player1, player2])
  end

  it 'can make a move for a player' do
    Middle.create_game(real_player, player2)
    Middle.make_move(real_player, 'rock')
    expect(real_player.move).to eq('rock')
  end

  it 'can make a move for a computer' do
    Middle.create_game(player1, computer)
    Middle.computer_move
    expect(['rock', 'paper', 'scissors']).to include(computer.make_move)
  end

  it 'can calculate the winner' do
    Middle.create_game(real_player, computer)
    Middle.make_move(real_player, 'rock')
    Middle.game_instance.instance_variable_set(:@player2_move, 'scissors')
    Middle.calculate_winner
    expect(Middle.game_instance.winner).to eq(real_player)
  end
end
