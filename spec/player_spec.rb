require 'player'

describe Player do

  let(:player)  { Player.new("Samson") }

  it 'is created with a name' do
    expect(player.name).to eq("Samson")
  end

  describe '#attack' do
    it 'contains the players attack' do
      expect(player.attack("Rock")).not_to be_empty
    end
  end
end
