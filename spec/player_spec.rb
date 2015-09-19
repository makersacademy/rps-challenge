require 'player'

describe Player do

  it "can choose rock as move" do
    expect(subject.choose(:rock)).to eq :rock
  end

  it "can choose paper as move" do
    expect(subject.choose(:paper)).to eq :paper
  end

  it "can choose scissors as move" do
    expect(subject.choose(:scissors)).to eq :scissors
  end

  it "can't choose anything other than paper, rock or scissors as a move" do
    expect{subject.choose(:banana)}.to raise_error "uh-oh, that's not a valid choice"
  end

end
