require 'spec_helper'
require 'player'

describe Player do
  let(:player) { Player.new }
  it "can present scissors" do
    expect(subject.scissors).to eq(:scissors)
  end

  it "can present rock" do
    expect(subject.rock).to eq(:rock)
  end

  it "can randomly generate rps" do
    allow(subject).to receive(:random_rps).and_return(:scissors)
    expect(subject.random_rps).to eq(:scissors)
  end

  it "compares rock and scissors" do
    expect(subject.compare(:rock, player.scissors)).to eq("You win")
  end

  it "compares rock and paper" do
    expect(subject.compare(:rock, player.paper)).to eq("You lose")
  end

  it "compares scissors and rock" do
    expect(subject.compare(:scissors, player.rock)).to eq("You lose")
  end

  it "compares scissors and paper" do
    expect(subject.compare(:scissors, player.paper)).to eq("You win")
  end

  it "compares paper and rock" do
    expect(subject.compare(:paper, player.rock)).to eq("You win")
  end

  it "compares paper and scissors" do
    expect(subject.compare(:paper, player.scissors)).to eq("You lose")
  end

  it "reports tie when both present the same" do
    expect(subject.compare(:paper, player.paper)).to eq("Tie")
  end
end
