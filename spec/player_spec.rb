require 'player'

describe Player do 
  subject(:player_1) { described_class.new("Spock") }

  context '#initialize' do
    it "initializes with a name" do 
      expect(player_1.name).to eq "Spock"
    end
  end
end