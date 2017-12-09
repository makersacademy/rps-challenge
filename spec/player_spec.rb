require 'player'

describe Player do
  
  subject(:mortimer) { Player.new("mortimer") }

  describe '#initialization' do
    it "initialises with a capitalised name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end
end
