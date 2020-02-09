describe Game do
  let(:player) { double :player, name: 'Liz', move: 'rock' }

  subject { described_class.new(player)}

  it 'stores a player' do
    expect(subject.player).to eq player
  end

  describe '#computer_generator' do
    it 'returns a computer move' do
      srand(2)
      expect(subject.computer_generator).to eq 'rock'
    end

    it 'returns a random value' do
      srand(4)
      expect(subject.computer_generator).to eq 'scissors'
    end

  end

  describe '#select_winner' do 
    it 'accepts two moves and returns a winner' do
      subject.computer_generator
      subject.select_winner(player_1: 'rock', computer: 'scissors')
      expect(subject.winner).to eq 'Player 1'
    end

    it 'compares player move against computer move by default' do
      srand(4)
      subject.computer_generator
      subject.select_winner
      expect(subject.winner).to eq 'Player 1'
    end
  end
end