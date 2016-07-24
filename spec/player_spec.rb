require 'player'

describe Player do
  subject(:player) {described_class.new("Luke")}

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq "Luke"
    end
  end


end
