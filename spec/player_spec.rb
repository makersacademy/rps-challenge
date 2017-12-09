require 'player'

describe Player do

  subject(:mortimer) { Player.new("mortimer") }

  describe '#initialization' do
    it "initialises with a capitalised name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end
  describe "#random_weapon" do
    it "should return an available weapon" do
      expect{ mortimer.random_weapon }.not_to raise_error
    end
  end
end
