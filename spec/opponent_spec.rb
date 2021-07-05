require 'opponent'

describe Opponent do
  it "can return 'Scissors' randomly" do
    srand(0)
    expect(subject.move).to eq "Scissors"
  end

  it "can return 'Paper' randomly" do
    srand(1)
    expect(subject.move).to eq "Paper"
  end

  it "can return 'Rock' randomly" do
    srand(3)
    expect(subject.move).to eq "Rock"
  end

end
