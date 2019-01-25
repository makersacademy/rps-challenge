describe Game do

  let(:marketeer) {double(:player1, hand: "Rock")}
  let(:game) {Game.create(marketeer)}
#tests for ?create and instance methods?

  it 'Game initializes with player 1 object' do
    expect(game.player1).to eq marketeer
  end

  # it 'Can receive computers_hand, (selects rock)' do
  #   allow_any_instance_of(Game).to receive(:computers_hand) { "Rock" }
  #   expect(game.computers_hand).to eq "Rock"
  # end

  it 'Will confirm if the player chose a winning hand' do
    allow_any_instance_of(Game).to receive(:computers_hand) { "Rock" }
    expect(game.gaming).to eq "Play again, no one wins (rock,rock)"
  end

end
