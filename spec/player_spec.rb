require 'player'

describe Player do

  subject(:mortimer) { Player.new("mortimer") }

  describe '#initialization' do
    it "initialises with a capitalised name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end
  describe "#random_weapon" do
    it "should return a weapon" do
      srand(1)
      mortimer.random_weapon
      expect(mortimer.choice.weapon).to eq :spock
    end
  end
end
