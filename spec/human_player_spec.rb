require 'human_player'

describe Human_Player do
  subject(:human_player) { Human_Player.new("Steve") }

  it "has a name" do
    expect(human_player.name).to eq("Steve")
  end

  it "Can select a #move" do
    expect(subject.move("Rock")).to eq("Rock")
    expect(subject.move("Paper")).to eq("Paper")
    expect(subject.move("Scissors")).to eq("Scissors")
  end
end
