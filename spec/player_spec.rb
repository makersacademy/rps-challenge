require 'player'

describe Player do
  subject(:chris) { Player.new('Chris') }

  describe '#name' do
    it 'has a name' do
      expect(chris.name).to eq("Chris")
    end
  end

  
end
