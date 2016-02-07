require 'game'

describe Game do
  subject(:game)     { described_class.new "Rock" }
  
  it 'establishes a winner' do
    allow(game).to receive(:cpu).and_return(:scissors)
    expect(game.result).to eq 1
  end
  
  it 'can return a draw' do
    allow(game).to receive(:cpu_choice).and_return("Rock")
    expect(game.result).to eq "Draw!"
  end
end