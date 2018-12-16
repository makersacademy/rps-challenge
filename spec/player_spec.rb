require 'player'

describe Player do

  let(:player)  { Player.new("Samson") }

  it 'is created with a name' do
    expect(player.name).to eq("Samson")
  end

  describe '#attack' do
    it 'contains the players attack' do
      expect(player.attack("rock")).not_to be_empty
    end
    it 'takes the attack as a symbol' do
      expect(player.attack("rock")).to eq :rock
    end
  end
end
