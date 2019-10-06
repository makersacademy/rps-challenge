require 'player'

describe Player do

  subject(:player) {described_class.new("Alec")}
  
  it 'returns player name' do
      expect(player.name).to eq "Alec"
    end

end
