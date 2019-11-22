require './lib/player'

describe Player do

  subject(:player) { described_class.new("test name") }

  it { should be_an_instance_of Player }

  it "can return the players name" do
    expect(subject.name).to eq "test name"
  end

end
