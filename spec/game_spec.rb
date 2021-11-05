describe Game do
  let(:player1) { double(:player, name: "Alan") }
  let(:player2) { double(:player, name: "Babs") }
  let(:subject) { described_class.new(:player1, :player2) }

  describe '#initialize' do
    it 'takes two players and stores them in an array' do
      expect(subject.players.length).to eq 2
    end
  end

end
