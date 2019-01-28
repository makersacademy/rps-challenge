describe Game do

  let(:marketeer) {double(:player1, hand: "Rock")}
  let(:computer) {double(:computer_class, hand: "Scissors")}
  let(:game) {Game.create(marketeer)}

#Need tests for creating a game class

  it 'Game initializes with player 1 object' do
    expect(game.player1).to eq marketeer
  end

  it 'Will confirm that Rock(player) wins against Scissors(computer)' do
    allow_any_instance_of(Computer).to receive(:hand) { "Scissors" }
    game.gaming
    expect(game.winner).to eq game.player1
  end

end
