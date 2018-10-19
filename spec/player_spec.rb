require 'player'

describe Player do
  let(:player) { described_class.new(player_name, player_choice) }
  let(:player_name) {double :player_name}
  let(:player_choice) {double :player_choice}

  it "retains player's choice" do
   expect(player.choice).to eq(player_choice)
 end
end
