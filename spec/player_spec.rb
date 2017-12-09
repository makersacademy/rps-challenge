require 'player'

describe Player do

  subject(:mortimer) { Player.new("mortimer") }

  describe '#initialization' do
    it "initialises with a capitalised name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end
  describe '#choose' do
    it "raises an error if an unavailable choice is made" do
      expect{ mortimer.choose(axe) }.to raise_error "You can't use an axe you oaf! Try again"
    end
  end
end
