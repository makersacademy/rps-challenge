describe Game do
  let(:player1) { double(:player, name: "Alan") }
  let(:player2) { double(:player, name: "Babs") }
  let(:subject) { described_class.new(:player1, :player2) }

  describe '#initialize' do
    it 'takes two players and stores them in an array' do
      expect(subject.players.length).to eq 2
    end
  end

  describe '#calculate_winnder' do
    it 'correctly states who wins when given players choices' do
      expect(subject.calculate_winner("Rock", "Scissors")).to eq "player1 wins!"
    end
    it 'correctly states who wins when given players choices' do
      expect(subject.calculate_winner("Paper", "Scissors")).to eq "player2 wins!"
    end
    it 'correctly states when there is a draw' do
      expect(subject.calculate_winner("Rock", "Rock")).to eq "It's a draw!"
    end
  end
end
