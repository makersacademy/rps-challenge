require 'computer'

describe Computer do

  it "is called computer" do
    expect(subject.name).to eq "Computer"
  end

  it "outputs a fixed choice" do
    allow(subject).to receive(:choose).and_return(:scissors)
    expect(subject.choice).to eq :scissors
  end





end
