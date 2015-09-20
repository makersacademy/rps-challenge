require 'game'

describe Game do
  subject { Game.new :player1, :player2 }

  it 'responds to play with 2 arguments' do
    expect(subject).to respond_to(:play).with(2).argument
  end

  it 'compares choices from 2 players to determine winner' do
    expect(subject.play :r, :r).to eq 'Draw!'
  end
end
