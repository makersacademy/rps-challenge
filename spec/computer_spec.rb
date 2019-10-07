require "computer"

describe Computer do

  it "should return Rock" do
    allow(subject).to receive(:play).and_return("Rock")
    expect(subject.play). to eq("Rock")
  end

  it "should return Scissors" do
    allow(subject).to receive(:play).and_return("Scissors")
    expect(subject.play). to eq("Scissors")
  end

  it "should return Paper" do
    allow(subject).to receive(:play).and_return("Paper")
    expect(subject.play). to eq("Paper")
  end

end
