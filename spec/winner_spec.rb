require './lib/winner'

describe Winner do
  subject(:winner) { described_class.new }

  context 'Marketter wins the game' do
    it 'Marketeer chooses Rock opponent chooses Scissors' do
      expect(winner.result('Rock', 'Scissors')).to eq("Congratulations you win!!")
    end
    it 'Marketeer chooses Paper opponent chooses Rock' do
      expect(winner.result('Paper', 'Rock')).to eq("Congratulations you win!!")
    end

    it 'Marketeer chooses Scissors opponent chooses Paper' do
      expect(winner.result('Scissors', 'Paper')).to eq("Congratulations you win!!")
    end
  end

  context 'Marketeer loses the came' do
    it 'Marketeer chooses Scissors opponent chooses Rock' do
      expect(winner.result('Scissors', 'Rock')).to eq("Unlucky you lose!!")
    end

    it 'Marketeer chooses Rock opponent chooses Paper' do
      expect(winner.result('Rock', 'Paper')).to eq("Unlucky you lose!!")
    end

    it 'Marketeer chooses Paper opponent chooses Scissors' do
      expect(winner.result('Paper', 'Scissors')).to eq("Unlucky you lose!!")
    end
  end

  it 'Game is a draw if both players choose the same item' do
    expect(winner.result('Rock', 'Rock')).to eq("Game was a draw")
  end

end
