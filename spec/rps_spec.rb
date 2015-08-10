require "rps"

describe "rps" do
  it "returns true when p1 wins" do
    expect(rps "Rock", "Scissors").to eq "win"
    expect(rps "Scissors", "Paper").to eq "win"
    expect(rps "Paper", "Rock").to eq "win"
  end
  it "returns 'draw' when p1 wins" do
    expect(rps "Rock", "Rock").to eq "draw"
    expect(rps "Scissors", "Scissors").to eq "draw"
    expect(rps "Paper", "Paper").to eq "draw"
  end
  it "returns false when p1 loses" do
    expect(rps "Scissors", "Rock").to eq "lose"
    expect(rps "Paper", "Scissors").to eq "lose"
    expect(rps "Rock", "Paper").to eq "lose"
  end
end