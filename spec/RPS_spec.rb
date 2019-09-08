require "RPS"

describe RockPaperSissors do
  it "returns ROCK from random RPS move" do
    srand(666)
    expect(subject.random_move).to eq("ROCK")
  end
  it "returns ROCK from random RPS move" do
    srand(667)
    expect(subject.random_move).to eq("PAPER")
  end
  it "returns ROCK from random RPS move" do
    srand(668)
    expect(subject.random_move).to eq("SISSORS")
  end
end
