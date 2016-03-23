require 'player.rb'

describe Player do

  subject(:player){ described_class.new("Paul") }

  describe "#initialize" do
    it 'takes a player name and sets it' do
      expect(player.name).to eq "Paul"
    end
  end

end
