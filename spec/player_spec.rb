require 'player'

describe Player do

  subject(:player) {described_class.new("Rufus")}

  it 'saves and returns player name' do
    expect(player.name).to eq "Rufus"
  end

  describe '#choice' do
    it 'saves and returns player choice' do
      player.choice= :spock
      expect(player.choice).to eq :spock
    end
  end

end
