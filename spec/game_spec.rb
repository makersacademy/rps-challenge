require 'game'


describe Game do

  subject(:game) { Game.new(computer_move, player_move) }
  let(:computer_move) { double(:computer_move, :make_move => 'rock') }
  let(:player_move) { double(:player_move) }

  it 'can create a new game with a computer move and a player move' do
    expect { game }.not_to raise_error
  end

  it 'can show the computer_move turn' do
    expect(game.computer_move.make_move).to eq('rock')
  end

  # it 'can compare computer_move and player move to see the winner' do
  #   expect(game.outcome).to eq("")
  # end

end
