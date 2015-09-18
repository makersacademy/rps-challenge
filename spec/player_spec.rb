require 'spec_helper'
require 'player'

describe Player do
  it "can present scissors" do
    expect(subject.scissors).to eq("Scissors")
  end

  it "can present rock" do
    expect(subject.rock).to eq("Rock")
  end

  # it "can compare rock vs. scissors" do
  #   player2 = Player.new
  #   expect(subject.rock.vs(player2.scissors)).to eq("#{subject} wins!")
  # end
end
