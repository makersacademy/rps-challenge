require 'player'

describe Player do

  it "Can change it's name" do
    subject.change_name("John")
    expect(subject.name).to eq "John"
  end

  it "Can change the hand thrown" do
    subject.thrown_hand("Rock")
    expect(subject.hand).to eq "Rock"
  end
end