require 'spec_helper'
require 'player'

describe Player do
  let(:player) { Player.new }
  it "can present scissors" do
    expect(subject.scissors).to eq("Scissors")
  end

  it "can present rock" do
    expect(subject.rock).to eq("Rock")
  end

  it "can randomly generate ()" do
    allow(subject).to receive(:random_rps).and_return("Scissors")
    expect(subject.random_rps).to eq("Scissors")
  end

  it "compares rock and scissors" do
    expect(subject.compare("Rock", player.scissors)).to eq("Rock")
  end

  it "compares rock and paper" do
    expect(subject.compare("Rock", player.paper)).to eq("Paper")
  end

  it "compares scissors and rock" do
    expect(subject.compare("Scissors", player.rock)).to eq("Rock")
  end

  it "compares scissors and paper" do
    expect(subject.compare("Scissors", player.paper)).to eq("Scissors")
  end

  it "compares paper and rock" do
    expect(subject.compare("Paper", player.rock)).to eq("Paper")
  end

  it "compares paper and scissors" do
    expect(subject.compare("Paper", player.scissors)).to eq("Scissors")
  end

  it "reports tie when both present the same" do
    expect(subject.compare("Paper", player.paper)).to eq("Tie")
  end
end
