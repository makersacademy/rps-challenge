require 'game'

describe Game do

  let(:game) {Game.new}
  let(:player1) {double :player}

  it 'should be able to add a player' do
    game = Game.new
    expect(game.add_player(player1)).to eq [player1]
  end

  it 'should not be able to add more than 2 players' do
    2.times{game.add_player(player1)}
    expect{game.add_player(player1)}.to raise_error(RuntimeError, 'Only 2 players allowed')
  end

end

