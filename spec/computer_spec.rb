require 'computer'

describe Computer do
  it "returns a random rock paper scissors option" do
    expect(subject.play)
    .to eq("rock")
    .or eq("paper")
    .or eq("scissors")
  end

  it "can be stubbed, this is just here cos i don't know how.." do
    expect(subject).to receive(:play).and_return("rock")
    expect(subject.play).to eq "rock"
  end

end