require 'computer_rps'

describe ComputerRPS do

  context 'computer randomly selects either, Rock, Paper or Scissors' do
    it '#random_number generates a number between 1 and 3' do
      expect(subject.random_number).to be_between(1, 3).inclusive
    end

    it '#rps can return Rock' do
      allow(subject).to receive(:random_number) { 1 }
      expect(subject.rock_paper_scissors).to eq("Rock")
    end

    it '#rps can return Paper' do
      allow(subject).to receive(:random_number) { 2 }
      expect(subject.rock_paper_scissors).to eq("Paper")
    end

    it '#rps can return Scissors' do
      allow(subject).to receive(:random_number) { 3 }
      expect(subject.rock_paper_scissors).to eq("Scissors")
    end
  end

end