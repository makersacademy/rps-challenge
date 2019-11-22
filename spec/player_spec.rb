require './lib/player'

describe Player do

  it { should be_an_instance_of Player }
  subject(:player) { described_class.new("test name") }

  it "can return the players name" do
    expect(subject.name).to eq "test name"
  end

end
