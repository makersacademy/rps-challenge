require 'game'

describe Game do
  subject(:game)     { described_class.new "Rock" }
  subject(:game2)    { described_class.new "Rock", "Paper"}
  
  it 'can establish player 1 as a winner' do
    allow(game).to receive(:player_2).and_return("Scissors")
    expect(game.result).to eq 1
  end
  
  it 'can establish player 2 as a winner' do
    allow(game).to receive(:player_2).and_return("Paper")
    expect(game.result).to eq 2
  end
  
  it 'can return a draw' do
    allow(game).to receive(:player_2).and_return("Rock")
    expect(game.result).to eq "Draw!"
  end
  
  it 'accepts two arguments for multiplayer' do
    expect(game2.player_2).to eq "Paper"
  end
end