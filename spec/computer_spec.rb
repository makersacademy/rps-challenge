require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  
  describe '#choice' do
    it 'returns a valid weapon' do
      valid_answers = [:rock, :paper, :scissors]
      output = []
      results = []
      10.times do
        computer = Computer.new
        output.push(computer.choice)
      end
      output.each do |answer|
        results.push(valid_answers.include?(answer))
      end
      expect(results.include?(false)).to eq false
    end

    it 'returns rock' do
      rock_computer = described_class.new("rock")
      expect(rock_computer.choice).to eq "rock"
    end

    it 'returns paper' do
      paper_computer = described_class.new("paper")
      expect(paper_computer.choice).to eq "paper"
    end
  end
  
  describe '#set_choice' do
    it 'sets the choice to a random value' do
      new_computer = described_class.new("new")
      expect(new_computer.set_choice).not_to eq "new"
    end
  end
end
