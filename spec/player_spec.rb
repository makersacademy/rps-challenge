require "./lib/player.rb"

describe Player do

  it "check that the name is stored in the instantiated Player class" do 
    subject = described_class.new("Mike")
    expect(subject.name).to eq("Mike")
  end

  it "check that the initial score is stored as 0" do 
    subject = described_class.new("Mike")
    expect(subject.score).to eq(0)
  end

  it "check that when called score_plus will increase the score by 1" do 
    subject = described_class.new("Mike")
    expect{ subject.score_plus }.to change{ subject.score }.by(1)
  end

end
