require 'game'

class GameDummy
  include Game
end

describe Game do
  let(:game_dummy) { GameDummy.new }

  it 'reveals a win correctly' do
    result = game_dummy.result('rock', :scissors)
    expect(result).to be :win
  end

  it 'reveals a loss correctly' do
    result = game_dummy.result('paper', :scissors)
    expect(result).to be :lose
  end

  it 'reveals a draw correctly' do
    result = game_dummy.result('paper', :paper)
    expect(result).to be :draw
  end

  it 'chooses a move' do
    expect([:rock, :paper, :scissors]).to include(game_dummy.other_move)
  end
end
