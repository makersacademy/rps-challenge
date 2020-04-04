require 'ai_player'

describe Aiplayer do
  it "responds to #take_turn" do
    expect(subject).to respond_to :take_turn
  end

  xit "#take_turn gives rock" do
    expect(subject.take_turn).to eq 'rock'
  end

  it "#take_turn makes a random selection from rock, paper or scissors" do
    expect(["rock", "paper", "scissors"]).to include(subject.take_turn)
  end
end
