require 'ai_player'

describe Aiplayer do
  it "responds to #take_turn" do
    expect(subject).to respond_to :take_turn
  end
end
