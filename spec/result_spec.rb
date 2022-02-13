describe Result do

  subject(:result) { described_class.new }

  describe '#winner' do
    it 'should accept two variables' do
      variables = "rock", "rock"
      expect(result).to receive(:winner).with(variables)
      result.winner(variables)
    end
  end
end
