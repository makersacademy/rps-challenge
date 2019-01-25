describe Game do

  let(:marketeer) {double(:player1)}
  let(:game) {Game.create(marketeer)}

  #tests for ?create and instance methods?

  it 'Game initializes with player 1 object' do
    expect(game.player1).to eq marketeer
  end
end
