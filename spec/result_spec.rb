describe Result do

  subject(:result) { described_class.new }

  describe '#winner' do
    it 'should accept two variables' do
      variables = "rock", "rock"
      expect(result).to receive(:winner).with(variables)
      result.winner(variables)
    end

    it 'should result in a draw' do
      expect(result.winner("rock", "rock")).to eq("It's a draw!")
    end

    it 'should result in player one winning' do
      expect(result.winner("paper", "rock")).to eq("You won!")
    end

    it 'should result in player two winning' do
      expect(result.winner("scissors", "rock")).to eq("I won!")
    end

  end

end
