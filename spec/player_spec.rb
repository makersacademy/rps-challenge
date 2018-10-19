require "player.rb"

describe Player do

  subject(:john){described_class.new("John")}

  it "returns name" do
    expect(john.get_name).to eq "John"
  end

  it "returns score" do
    expect(john.get_score).to eq 0
  end

  it "increments score" do
    john.increase_score
    expect(john.get_score).to eq 1
  end

  it "updates the move" do
    john.define_move("rock")
    expect(john.move).to eq "rock"
  end

end
