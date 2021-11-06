require 'player'

describe 'Player' do
  let(:ryan) { Player.new('Ryan') }

  describe '#name' do
    it 'player has a name' do
      expect(ryan.name).to eq 'Ryan'
    end
  end

end