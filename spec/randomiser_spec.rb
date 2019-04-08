describe Randomiser do

  describe '#computer_choice' do
    it 'contains Rock, Paper, Scissors' do
      randomiser = Randomiser.new
      expect(["Rock", "Paper", "Scissors"]).to include(randomiser.computer_choice)
    end
  end
end
