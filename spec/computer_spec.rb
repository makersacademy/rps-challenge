require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe '#makes_choice' do
    it 'provides one of 3 options' do
      options = ["ROCK", "PAPER", "SCISSORS"]
      computer.makes_choice
      expect(options).to include(computer.choice)
    end
  end

end
