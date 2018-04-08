require 'computer'

describe Computer do

  describe 'random computer choice' do
    it 'returns paper every time' do
      fake_computer = double(:computer_choice, random_choice: "paper")
      expect(fake_computer.random_choice).to eq "paper"
    end
  end

  describe 'random computer choice' do
    it 'returns scissors every time' do
      fake_computer = double(:computer_choice, random_choice: "scissors")
      expect(fake_computer.random_choice).to eq "scissors"
    end
  end

  describe 'random computer choice' do
    it 'returns rock every time' do
      fake_computer = double(:computer_choice, random_choice: "rock")
      expect(fake_computer.random_choice).to eq "rock"
    end
  end
end
