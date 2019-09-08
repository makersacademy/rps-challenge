require "RPS"

describe RockPaperSissors do
  it "returns ROCK from random RPS move" do
    srand(666)
    expect(subject.random_move).to eq("rock")
  end
  it "returns ROCK from random RPS move" do
    srand(667)
    expect(subject.random_move).to eq("paper")
  end
  it "returns ROCK from random RPS move" do
    srand(668)
    expect(subject.random_move).to eq("sissors")
  end
  it "returns true when Rock plays Sissors" do
    expect(subject.play("rock", "sissors")).to eq("win")
  end
  it "returns false when Sissors plays Rock" do
    expect(subject.play("sissors", "rock")).to eq("lose")
  end
  it "returns true when Sissors plays Paper" do
    expect(subject.play("sissors", "paper")).to eq("win")
  end
end
