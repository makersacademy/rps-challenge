require 'player'

describe Player do
  let(:player_name) { double :player_name }
  let(:subject) { described_class.new(player_name) }
 it "creates new instances of player with name" do
   expect(subject.player_name).to eq(player_name)
  end
end
