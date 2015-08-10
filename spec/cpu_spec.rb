require "cpu"

describe CPU do
  it "can choose rock" do
    all = []
    20.times { all << subject.choice }
    expect(all.include?("Rock")).to be true
  end
  it "can choose scissors" do
    all = []
    20.times { all << subject.choice }
    expect(all.include?("Scissors")).to be true
  end
  it "can choose paper" do
    all = []
    20.times { all << subject.choice }
    expect(all.include?("Paper")).to be true
  end
end