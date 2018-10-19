require 'game_result'

describe GameResult do

  context 'when a player chooses Rock and the Game chooses Paper' do
    it 'should show that the game won' do
      expect(GameResult.calculate('Rock', 'Paper')).to eq 'win'
    end
  end

  context "when a player chooses Scissors and the Game chooses Paper" do
    it 'shows that the Game lost' do
      expect(GameResult.calculate('Scissors', 'Paper')).to eq 'lose'
    end
  end

  context "when a player chooses Paper and the Game chooses Paper" do
    it 'shows that the Game tied' do
      expect(GameResult.calculate('Paper', 'Paper')).to eq 'tie'
    end
  end

end
