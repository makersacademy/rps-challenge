require 'game'

describe Game do
  let(:george){described_class.new('George')}

  context 'Stores the player\'s name' do
    it 'stores the player\'s name' do
      expect(george.player_name).to eq 'George'
    end
  end

  context 'Player picks rock, paper or scissors' do
    
  end
end
