require 'player'

describe Player do
  subject(:gaya) {Player.new('Gaya')}

  describe '#name' do
    it "returns the name" do
      expect(gaya.name).to eq 'Gaya'
    end
  end
end