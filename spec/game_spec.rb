require 'game'

describe Game do



end

describe Player do
  subject(:player) { described_class.new("Cesare", "rock") }

  describe '#name' do
    it "User can see his/her name" do
      expect(player.name).to eq "Cesare"
    end
  end

  describe '#name' do
    it "User can see his/her move" do
      expect(player.move).to eq "rock"
    end
  end

end
