require 'game'


describe Game do

  subject(:game1) { Game.new(computer_move, player_move) }
  let(:computer_move) { double(:computer_move, :make_move => 'rock') }
  let(:player_move) { double(:player_move, :make_move => 'rock') }

  subject(:game2) { Game.new(computer_move2, player_move2) }
  let(:computer_move2) { double(:computer_move, :make_move => 'rock') }
  let(:player_move2) { double(:player_move, :make_move => 'scissors') }

  subject(:game3) { Game.new(computer_move3, player_move3) }
  let(:computer_move3) { double(:computer_move, :make_move => 'rock') }
  let(:player_move3) { double(:player_move, :make_move => 'paper') }

  subject(:game4) { Game.new(computer_move4, player_move4) }
  let(:computer_move4) { double(:computer_move, :make_move => 'scissors') }
  let(:player_move4) { double(:player_move, :make_move => 'paper') }

  subject(:game5) { Game.new(computer_move5, player_move5) }
  let(:computer_move5) { double(:computer_move, :make_move => 'paper') }
  let(:player_move5) { double(:player_move, :make_move => 'scissors') }

  subject(:game6) { Game.new(computer_move6, player_move6) }
  let(:computer_move6) { double(:computer_move, :make_move => 'scissors') }
  let(:player_move6) { double(:player_move, :make_move => 'rock') }

  subject(:game7) { Game.new(computer_move7, player_move7) }
  let(:computer_move7) { double(:computer_move, :make_move => 'paper') }
  let(:player_move7) { double(:player_move, :make_move => 'rock') }

  it 'can create a new game with a computer move and a player move' do
    expect { game1 }.not_to raise_error
  end

  it 'can show the computer_move turn' do
    expect(game1.computer_move.make_move).to eq('rock')
  end

  it 'can compare computer_move with rock and player_move with rock' do
    expect(game1.outcome).to eq("It is a draw")
  end

  it 'can compare computer_move with rock and player_move with scissors' do
    expect(game2.outcome).to eq("Computer has won")
  end

  it 'can compare computer_move with rock and player_move with paper' do
    expect(game3.outcome).to eq("You have won")
  end

  it 'can compare commputer_move with scissors and player_move with paper' do
    expect(game4.outcome).to eq("Computer has won")
  end

  it 'can compare commputer_move with paper and player_move with scissors' do
    expect(game5.outcome).to eq("You have won")
  end

  it 'can compare commputer_move with scissors and player_move with rock' do
    expect(game6.outcome).to eq("You have won")
  end

  it 'can compare commputer_move with paper and player_move with rock' do
    expect(game7.outcome).to eq("Computer has won")
  end


end
