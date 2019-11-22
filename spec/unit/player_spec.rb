require "./lib/player.rb"

describe Player do

  subject { Player.new("Player1") }

  it "accepts a name on initialize and returns it on #name" do
    player = Player.new("Test")
    expect(player.name).to eq "Test"
  end

  it "accepts the player's choice as an argument and returns it" do
    subject.enter_choice("Rock")
    expect(subject.choice).to eq "Rock"
  end

  it "returns error if choice is not valid" do
    expect { subject.enter_choice("Foo") }.to raise_error "Invalid choice"
  end
end
