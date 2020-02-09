require 'player'

describe Player do 

  subject(:ryan) { Player.new('Ryan') }
  subject(:bob) { Player.new('Bob') }

  describe '#name' do 
    it 'returns a name' do
    expect(ryan.name).to eq 'Ryan'
    end
  end
end 
