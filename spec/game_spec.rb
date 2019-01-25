describe Game do

  let(:marketeer) {double(:player1, hand: "Rock")}
  let(:computer) {double(:computer_class, hand: "Scissors")}
  let(:game) {Game.create(marketeer)}

#Do you need tests for ?create and instance methods?

  it 'Game initializes with player 1 object' do
    expect(game.player1).to eq marketeer
  end

  # it 'Can receive computers_hand, (selects rock)' do
  #   allow_any_instance_of(Game).to receive(:computers_hand) { "Rock" }
  #   expect(game.computers_hand).to eq "Rock"
  # end

  it 'Will confirm that Rock(player) wins against Scissors(computer)' do
    allow_any_instance_of(Computer).to receive(:hand) { "Scissors" }
    game.gaming
    expect(game.winner).to eq game.player1
  end

end
