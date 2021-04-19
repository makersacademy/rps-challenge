require "player.rb"

describe Player do
  it "Stores the name as a value that can be returned" do
    subject = Player.new("Jim")
    expect(subject.name).to eq("Jim")
  end
end
