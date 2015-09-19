require "player"

describe Player do

  it "can select rock" do
    expect(subject.select(:rock)).to be :rock
  end

  it "can select paper" do
    expect(subject.select(:paper)).to be :paper
  end

  it "can select scissors" do
    expect(subject.select(:scissors)).to be :scissors
  end

  it "receives an error message if they select non-valid move" do
    expect{subject.select(:cake)}.to raise_error "Please select 'Rock', 'Paper' or 'Scissors'."
  end

end
