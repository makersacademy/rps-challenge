require 'player'

describe 'Player' do
  let(:ryan) { Player.new('Ryan') }

  describe '#name' do
    it 'player has a name' do
      expect(ryan.name).to eq 'Ryan'
    end
  end

  describe '#select_move' do
    it 'player enters rock, paper, or scissors' do
      expect(ryan.select_move('paper')).to eq "paper"
    end
  end

end