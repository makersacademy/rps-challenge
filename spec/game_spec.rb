describe Game do
  let(:player) { double :player, name: 'Liz', move: 'rock' }
  let(:computer) { double :computer, name: 'computer', move: 'scissors' }

  subject { described_class.new(player, computer) }

  it 'stores a player' do
    expect(subject.player).to eq player
  end

  it 'stores a computer as a player' do
    expect(subject.opponent).to eq computer
  end

  describe '#select_winner' do 
    it 'accepts two moves and returns a winner' do
      subject.select_winner(player: 'rock', opponent: 'scissors')
      expect(subject.winner).to eq 'Player 1'
    end

    it 'compares player move against computer move by default' do
      srand(4)
      subject.select_winner
      expect(subject.winner).to eq 'Player 1'
    end
  end
end