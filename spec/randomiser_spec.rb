describe Randomiser do

  describe '#computer_choice' do
    it 'contains Rock, Paper, Scissors' do
      randomiser = Randomiser.new
      expect(["Rock", "Paper", "Scissors"]).to include(randomiser.computer_choice)
    end

    it 'returns Paper' do
      srand(9999999)
      randomiser = Randomiser.new
      puts randomiser.computer_choice
      expect(randomiser.computer_choice).to eq 'Paper'
    end

    it 'returns Scissors' do
      srand(67809)
      randomiser = Randomiser.new
      puts randomiser.computer_choice
      expect(randomiser.computer_choice).to eq 'Scissors'
    end

    it 'returns Rock' do
      srand(67811)
      randomiser = Randomiser.new
      puts randomiser.computer_choice
      expect(randomiser.computer_choice).to eq 'Rock'
    end
  end
end
