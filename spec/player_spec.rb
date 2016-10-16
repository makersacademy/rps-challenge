require 'game'

describe Player do
  subject(:player) { described_class.new('Frodo') }

  describe '#name' do
    it "returns user name" do
      expect(player.name).to eq 'Frodo'
    end
  end

  describe '#weapon' do
    it "returns user choice" do
      player.weapon = :scissors
      expect(player.weapon).to eq :scissors
    end
  end

  describe '#weapon=' do
    it "stores user choice" do
      player.weapon = :scissors
      expect(player.weapon).to eq :scissors
    end

    it "fails when user choice is not valid" do
      expect { player.weapon = :pencil }.to raise_error 'Not a valid weapon'
    end
  end
end
