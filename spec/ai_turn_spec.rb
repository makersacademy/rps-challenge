require 'ai_player'

describe Aiplayer do
  it "responds to #take_turn" do
    expect(subject).to respond_to :take_turn
  end

  it "#take_turn gives rock" do
    expect(subject.take_turn).to eq 'rock'
  end
end
