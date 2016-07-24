require 'player'

describe Player do

  subject(:player) {Player.new('Yuri')}

  describe "#name" do
    it 'returns the name' do
     expect(player.name).to eq "Yuri"
    end
  end

end
