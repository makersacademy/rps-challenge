describe Game do
  let(:player) { double :player }

  subject { described_class.new(player)}

  it 'stores a player' do
    expect(subject.player).to eq player
  end

  describe '#computer_move' do
    it 'returns a computer move' do
      srand(2)
      expect(subject.computer_move).to eq 'rock'
    end

    it 'returns a random value' do
      srand(4)
      expect(subject.computer_move).to eq 'scissors'
    end

  end
end