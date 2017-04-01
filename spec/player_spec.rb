require 'player'

describe Player do

  subject(:pedro) {described_class.new("Pedro")}

  describe '#name' do
    it 'returns player name' do
      expect(pedro.name).to eq "Pedro"
    end
  end

end
