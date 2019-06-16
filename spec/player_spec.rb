require_relative "../lib/player"

describe Player do
  subject { described_class.new("Remzilla") }
  it "returns the players name" do
    expect(subject.name).to eq("Remzilla")
  end
end