require "./lib/player"

describe Player do

  subject(:player_1) { described_class.new("Chris") }

 it "#checks for instance of player" do
   expect(subject).to be_an_instance_of(described_class)
 end

 it "can find the players name" do
   expect(player_1.name). to eq "Chris"
 end

end
