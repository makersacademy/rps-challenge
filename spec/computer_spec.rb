describe Computer do
  let(:computer) { described_class.new }
  describe '#computer_choice' do
    it 'returns a randomly selected weapon' do
      srand(1)
      expect(computer.choice).to eq :paper
    end
  end
  describe '#record_score' do
    it 'records when a player won a tie' do
      expect { computer.record_score }.to change {computer.score}.by 1
    end
  end
end
