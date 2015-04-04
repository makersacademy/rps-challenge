describe Game do

  it "takes two arguments on intitialization" do
    expect(described_class).to respond_to(:new).with(2).arguments
  end

  it "selects correct winner from rock/paper" do
    player1 = double choice: 'rock', name: 'player1'
    player2 = double choice: 'paper', name: 'player1'
    game = described_class.new(player1, player2)
    expect(game.winner).to eq 'The Winner Is player1'
  end

  it "announces a draw" do
    player1 = double choice: 'rock', name: 'player1'
    player2 = double choice: 'rock', name: 'player1'
    game = described_class.new(player1, player2)
    expect(game.winner).to eq "It's a draw!"
  end
end