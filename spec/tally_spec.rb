require 'tally'

describe Tally do
  it "records wins" do
    7.times { subject.win }
    expect(subject.wins).to eq 7
  end

  it "records losses" do
    9.times { subject.lose }
    expect(subject.losses).to eq 9
  end
end
