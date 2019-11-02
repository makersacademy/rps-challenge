require 'player'

describe Player do

  subject(:amy) { Player.new('Amy') }

  describe 'name' do

    it 'returns the name' do
      expect(amy.name).to eq 'Amy'
    end

  end

end
