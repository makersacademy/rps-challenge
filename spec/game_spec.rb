require 'game'

describe Game do

  let(:game){Game.new}
  let(:computer){double :player, name: "Computer"}
  let(:player){double :player, name: "Player"}

  it 'can display a list of possible moves' do
    expect(game.moves).to eq({ 1 => "rock", 2 => "paper", 3 => "scissors", 4 => "lizard", 5 => "spock" })
  end

  it 'can select a specific move' do
    expect(game.moves[1]).to eq "rock"
  end

  it 'can select a move at random' do
    expect(game.random_move).to satisfy{|m| ["rock", "paper", "scissors", "lizard", "spock"].include?(m)}
  end


end