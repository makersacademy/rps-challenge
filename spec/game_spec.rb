require 'game'

describe Game do
  let (:player) {Player.new('Karim')}
  let (:testgame) { Game.new(player) }
  it 'is expected to return move' do
    expect(['rock', 'paper', 'scissors']).to include(testgame.generate_move)
  end


end