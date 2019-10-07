require 'game'

describe Game do
  subject(:game) { described_class.new(player, ai) }
  let(:player) { double 'Vlad' }
  let(:ai) { double 'ai' }
  
  describe '#result' do
    context "when player chooses Rock" do

      it 'it is a "draw" if AI chooses Rock' do
        expect(game.result('Rock', 'Rock')).to eq('draw')
      end

      it 'it is a player "win" if AI chooses Scissors' do
        expect(game.result('Rock', 'Scissors')).to eq('win')
      end

      it 'it is a player "lose" if AI chooses paper' do
        expect(game.result('Rock', 'Paper')).to eq('lose')
      end
    end
  end

end
 