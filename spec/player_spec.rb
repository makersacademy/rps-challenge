require 'player'

describe Player do
  subject(:player) { described_class.new "James" }
  it 'should return the players name' do
    expect(subject.name).to eq "James"
  end

  it 'should let player make a choice' do
    subject.make_choice("Paper")
    expect(subject.choice).to eq "Paper"
  end
end
