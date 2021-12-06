require 'game'

describe Game do

  let(:game) { described_class.new(player1,player2) }
  let(:draw) { described_class.new(player1,player3) }
  let(:lose) { described_class.new(player2,player1) }
  let(:player1) { double("Winner", :move => "Scissors") }
  let(:player2) { double("Loser", :move => "Paper") }
  let(:player3) { double("Draw", :move => "Scissors") }

  context "#initialize"

  it "should be initialized with player1" do
    expect(game.player1).to eq player1
  end

  it "should be initialized with player2" do
    expect(game.player2).to eq player2
  end

  context "#decide_winner"

  it "should be able to decide the winner" do
    expect(game.decide_winner).to eq player1
  end

  it "player 2 is also able to win" do
    expect(lose.decide_winner).to eq player1
  end

  it "should declare no winner in the event of a draw" do
    expect(draw.decide_winner).to be nil
  end

end
