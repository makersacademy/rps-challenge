require './lib/computer'

describe Computer do

  describe 'random choice'do
    it 'chooses rock' do
      test_computer = double(:move, random: "rock")
      expect(test_computer.random).to eq "rock"
    end
  end

  describe 'random choice'do
    it 'chooses paper' do
      test_computer = double(:move, random: "paper")
      expect(test_computer.random).to eq "paper"
    end
  end

  describe 'random choice'do
    it 'chooses scissors' do
      test_computer = double(:move, random: "scissors")
      expect(test_computer.random).to eq "scissors"
    end
  end
end



#
#
#   it 'has an array of RPS to choose from' do
#     expect(subject.move).to include ["rock", "paper", "scissors"]
#   end
# end
