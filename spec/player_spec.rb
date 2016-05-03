require 'player'

describe Player do
  subject(:mara)  { Player.new('Mara') }

  describe '#name' do
    it 'returns name' do
      expect(mara.name).to eq 'Mara'
    end
  end

  describe "#choose" do
    it "sets the player's weapon of choice" do
      mara.choose("rock")
      expect(mara.weapon).to eq "rock"
    end
  end

end