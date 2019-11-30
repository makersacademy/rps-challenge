require 'player'

describe Player do
  subject(:ellie) { Player.new('Ellie') }

  describe '#name' do
    it "should return player name" do
      expect(ellie.name).to eq 'Ellie'
    end
  end

end
