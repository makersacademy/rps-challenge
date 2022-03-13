require 'game'
require 'player'

describe Game do  
  let(:player) {Player.new("nico")}
  let(:game) {Game.new(player)}

  it 'creates a game with a player' do
    expect(game.player.name).to eq "nico"
  end

  it 'creates a random rps answer' do
    allow(game).to receive(:pc_answer).and_return('Rock')
    expect(game.pc_answer).to eq "Rock"
  end
  
  it 'returns a win/lose/tie message depending on player_answer' do
    allow(game).to receive(:pc_answer).and_return('Rock')
    expect(game.result("Scissors",game.pc_answer)).to eq "You've lost :("
  end

end