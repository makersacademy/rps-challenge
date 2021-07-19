require 'game'

describe Game do
  let (:player) {Player.new('Karim')}
  let (:testgame) { Game.new(player) }
  before(:each) do
   allow(testgame).to receive(:generate_move).and_return('Rock')
  end
  it 'is expected to return move' do
    expect(['Rock', 'Paper', 'Scissors']).to include(testgame.generate_move)
  end

  it 'is expected to return a player move' do
    testgame.player_move('Rock')
    expect(testgame.player.move).to eq('Rock')
  end

  it 'Correctly works out a win' do
    testgame.player_move('Paper')
    expect(testgame.player_win?) == true
    expect(testgame.player_draw?) == false
  end

  it 'Correctly works out a draw' do
    testgame.player_move('Rock')
    expect(testgame.player_win?) == false
    expect(testgame.player_draw?) == true
  end

  it 'Correctly works out a loss' do
    testgame.player_move('Scissors')
    expect(testgame.player_win?) == false
    expect(testgame.player_draw?) == false
  end
end
