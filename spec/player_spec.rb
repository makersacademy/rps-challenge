require 'player'

describe Player do 
  subject(:ben) {described_class.new('Ben')}

  describe '#name' do 
    it 'returns the player name' do 
      expect(ben.name).to eq 'Ben'
    end
  end

  describe '#pick' do 
    it 'returns a valid choice to play' do 
      expect(ben.pick('Rock')).to eq 'Rock'
    end
  end

end

