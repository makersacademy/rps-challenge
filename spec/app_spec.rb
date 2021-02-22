require 'rps'
require 'turn'

describe RPS do

let(:turn) {Turn.new("rock")}

  it "new instance of the class has a name" do
    game = RPS.new("test")
    expect(game.name).to eq("test")
  end

  it "win" do
    turn.computer_choice
    allow(turn).to receive(:computer_choice).and_return("scissors")
    expect(turn.win?).to be(true)
  end

  it "lose" do
    turn.computer_choice
    allow(turn).to receive(:computer_choice).and_return("paper")
    expect(turn.lose?).to be(true)
  end

  it "not win" do
    turn.computer_choice
    allow(turn).to receive(:computer_choice).and_return("scissors")
    expect(turn.lose?).to be(false)
  end

  it "not lose" do
    turn.computer_choice
    allow(turn).to receive(:computer_choice).and_return("paper")
    expect(turn.win?).to be(false)
  end

  it "should choose a sign at random" do
    turn.computer_choice
    expect(["rock","paper","scissors"]).to include(turn.computer_choice)
  end

end
