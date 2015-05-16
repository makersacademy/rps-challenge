require 'game'

describe Game do
  let (:player1) {double :player1}
  let (:opponent) {double :opponent}
  let (:game) {Game.new(player1, opponent)}

  before :each do
    allow(player1).to receive(:name).and_return('name')
    allow(opponent).to receive(:name).and_return('Computer')
  end

  it {expect(game).to respond_to :player}
  it {expect(game).to respond_to :opponent}
  it {expect(game).to respond_to(:play).with(1).argument}
  it {expect(game).to respond_to :compete}
  it {expect(game).to respond_to(:rules).with(1).argument}
  it {expect(game).to respond_to :winner }

  it 'allows opponent to choose its go' do
    game.compete('paper')
    expect(game.play('rock')).to eq "name chooses: rock, Computer chooses: paper"
  end

end