require 'game'

describe Game do
  let (:tarun) { double :player, name: 'Tarun' }
  subject {Game.new(tarun)}

  it 'initializes with a player 1' do
    expect(subject.player_1).to eq tarun
  end

  it 'initializes with player 2 as computer as a default' do
    expect(subject.player_2).not_to be_nil
  end

  it 'returns draw when both players throw the same hand' do
    expect(subject.round('rock', 'rock')).to eq 'draw'
  end

  it 'returns a message if player 1 wins' do
    expect(subject.round('scissors', 'paper')).to eq 'Tarun wins'
  end

  it 'returns a message if player 2 wins' do
    expect(subject.round('scissors', 'rock')).to eq 'Computer wins'
  end
end