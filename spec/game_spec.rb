require "game"

describe Game do

  subject(:game) {described_class.new}
  # let(:rock) { double :rock}

  it "expects game class to be initialised with an array of RPS choices" do
    expect(game.options).to eq({ 1 => "Rock", 2 => "Paper", 3 => "Scissors" })
  end

  it "expects a random selection of rock, paper, or scissors" do
    allow(game).to receive(:choice) { "Rock" }
    expect(game.choice).to eq "Rock"
  end

end
