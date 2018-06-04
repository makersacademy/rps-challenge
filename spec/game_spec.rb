describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  describe '#player_1' do
    it 'gets the first player' do
      expect(subject.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'gets the second player' do
      expect(subject.player2).to eq player2
    end
  end

  describe '#winning_hand' do
    it 'returns true when passed rock, scissors' do
      expect(subject.winning_hand("Rock", "Scissors")).to eq true
    end
  end

  describe '#winner' do
    it 'knows when player 1 wins' do
      allow(player1).to receive_messages(:selection => "Rock", :name => "player1")
      allow(player2).to receive_messages(:selection => "Scissors", :name => "player2")
      expect(subject.winner).to eq "player1 wins!"
    end
  end

end
