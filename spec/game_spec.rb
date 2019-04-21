require 'game'



describe Game do

  let(:game) { described_class.new }

  describe '#win?' do
    it 'returns win if player chooses Paper and computer chooses Rock' do
      expect(game.win?).to eq true 
    end 
  end
end