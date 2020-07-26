require 'game'
describe Game do
  let(:player1) { double :player, name: "Haz", move: 'Rock', score: 0 }
  let(:player2) { double :player, name: "John Cena", score: 0 }
  subject { described_class.new(player1, player2) }

  it 'accepts player instances' do
    expect(subject.player1).to eq player1
  end

  it 'stores players moves' do
    expect(subject.player1.move).to eq 'Rock'
  end

  it 'stores computers moves' do
    allow(subject).to receive(:computer_move).and_return('Paper')
    expect(subject.computer_move).to eq 'Paper'
  end

  describe '#tie_game?' do
    it 'returns false if the moves are equal' do 
      srand(67809)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.tie_game?).to eq false
    end
    it 'returns true if the moves are equal' do
      srand(67810)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.tie_game?).to eq true
    end
  end

  describe '#winner' do 
    it 'returns the winner of the game' do 
      srand(67808)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.winner).to eq "John Cena"
    end
    it 'returns the winner of the game' do 
      srand(67809)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.winner).to eq "Haz"
    end
  end
end
