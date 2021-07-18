require 'game'

describe Game do
  let (:player) {Player.new('Karim')}
  let (:testgame) { Game.new(player) }
  it 'is expected to return move' do
    expect(['Rock', 'Paper', 'Scissors']).to include(testgame.generate_move)
  end

  it 'is expected to return a player move' do
    testgame.player_move('Rock')
    expect(testgame.player.move).to eq('Rock')
  end


end