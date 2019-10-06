require 'moves'

class MovesTest
  include Moves
end

describe MovesTest do
  subject(:game) { described_class.new }

  it 'stores game moves' do
    expect(Moves::MOVES).to eq ["Rock", "Paper", "Scissors"]
  end

  describe '#winning_move' do

    it 'scissor beats paper' do
      expect(game.winning_move("Scissors", "Paper")).to eq "Scissors"
    end

    it 'scissor beats paper(reversed order of arguements)' do
      expect(game.winning_move("Scissors", "Paper")).to eq "Scissors"
    end

    it 'rock beats scissors' do
      expect(game.winning_move("Scissors", "Rock")).to eq "Rock"
    end

    it 'paper beats rock' do
      expect(game.winning_move("Paper", "Rock")).to eq "Paper"
    end

    it 'tie when both chose paper' do
      expect(game.winning_move("Paper", "Paper")).to eq nil
    end

    it 'tie when both chose rock' do
      expect(game.winning_move("Rock", "Rock")).to eq nil
    end
  end
end
