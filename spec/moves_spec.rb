require 'moves'

class MoveClass; include Moves; end

describe Moves do

  let(:moves){MoveClass.new}

  it 'can display a list of possible moves' do
    expect(moves.move).to eq({ 1 => "rock", 2 => "paper", 3 => "scissors", 4 => "lizard", 5 => "spock" })
  end

  it 'can select a specific move' do
    expect(moves.move[1]).to eq "rock"
  end

  it 'can select a random move' do
    expect(moves.random).to satisfy{|m| ["rock", "paper", "scissors", "lizard", "spock"].include?(m)}
  end

end