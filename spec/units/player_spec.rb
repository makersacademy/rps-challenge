require 'player'

describe Player do

  subject(:daisy) {Player.new('Daisy')}

  describe '#name' do
    it "returns the player's name" do
      expect(daisy.name).to eq "Daisy"
    end
  end

  describe ''

end
