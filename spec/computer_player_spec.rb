require "computer_player"

describe ComputerPlayer do


  it "has a name" do
    expect(subject.name).to eq("Computer")
  end

  it "returns a random throw" do
    valid_throws = [:rock, :paper, :scissors]
    expect(subject.return_throw).
      to satisfy {|v| valid_throws.include? v}
  end

  it "counts the number of wins" do
    subject.win!
    subject.win!
    expect(subject.wins).to eq(2)
  end

end