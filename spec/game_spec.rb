require 'game.rb'

describe Game do

  let(:game)                                {Game.new}
  let(:jordan)       {double :player, choice: "paper"}
  let(:steve)        {double :player, choice: "paper"}
  let(:henry)     {double :player, choice: "scissors"}
  let(:roy)           {double :player, choice: "rock"}
  let(:mihai)        {double :player, choice: "paper"}
  let(:ben)           {double :player, choice: "rock"}


  it 'should be able to add a player' do
    expect(game.add_player("player")).to eq ["player"]
  end

  it 'should know when there is a draw' do
    game.add_player(jordan)
    game.add_player(steve)
    expect(game.draw?).to eq "draw"
  end

  it 'should know where a player loses' do
    game.add_player(henry)
    game.add_player(roy)
    expect(game.lost?).to eq "lost"
  end

  it 'should know when a player wins' do
    game.add_player(mihai)
    game.add_player(ben)
    expect(game.win?).to eq "win"
  end

end