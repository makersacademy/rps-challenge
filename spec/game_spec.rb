require 'game'
require 'player'

describe Game do  
  let(:player) {Player.new("James")}
  let(:game) {Game.new(player)}

  it 'starts a game of RPS and saves the player name' do
    expect(game.player.name).to eq "James"
  end

  it 'creates a random rps answer' do
    allow(game).to receive(:cpu_answer).and_return("Paper")
    expect(game.cpu_answer).to eq "Paper"
  end
  
  it 'returns a winning message' do
    allow(game).to receive(:cpu_answer).and_return("Scissors")
    expect(game.winner("Rock",game.cpu_answer)).to eq "You destroyed your opponent, your win will be remembered for an age"
  end

  it 'returns a drawing message' do
    allow(game).to receive(:cpu_answer).and_return("Paper")
    expect(game.winner("Paper",game.cpu_answer)).to eq "Both sides tried hard, but unfortunately it ended in a draw..."
  end

  it 'returns a losing message' do
    allow(game).to receive(:cpu_answer).and_return("Paper")
    expect(game.winner("Rock",game.cpu_answer)).to eq "Well that was embarassing, you should leave town for a while, you LOST"
  end

end