require 'game'

describe Game do
  let(:game) { Game.new(player) }
  let(:player) { double :player, :name => "Joe" }
  let(:throws) { [:rock, :paper, :scissors] }

  it 'has a player' do
    expect(game.players).to include player
  end

  it 'has a Computer player' do
    expect(game.players).to include :computer
  end

  it 'has a list of three throws (rock, paper and scissors)' do
    expect(game.throws).to eq throws
  end

  it 'player one has the first turn' do
    expect(game.turn).to eq player
  end

  xit 'player two has the second turn' do
    game.turn
    expect(game.turn).to eq :computer
  end


end