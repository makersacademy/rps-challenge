require "rpc"

describe "rpc" do
  it "returns true when p1 wins" do
    expect(rpc "rock", "scissors").to eq true
    expect(rpc "scissors", "paper").to eq true
    expect(rpc "paper", "rock").to eq true
  end
  it "returns 'draw' when p1 wins" do
    expect(rpc "rock", "rock").to eq "draw"
    expect(rpc "scissors", "scissors").to eq "draw"
    expect(rpc "paper", "paper").to eq "draw"
  end
  it "returns false when p1 loses" do
    expect(rpc  "scissors", "rock").to eq false
    expect(rpc "paper", "scissors").to eq false
    expect(rpc "rock", "paper").to eq false
  end
end