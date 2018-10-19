require 'evaluator'

describe Evaluator do

  it "evaluates who has won the game" do
    player1 = Player.new("Ray", "Rock")
    player2 = Computer.new
    subject = Evaluator.new(player1, player2)
    allow(player2).to receive(:move).and_return("Scissors")
    expect(subject.evaluate).to eq "Ray"
  end
end
