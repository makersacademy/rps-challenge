require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#computer_choice' do
    it 'generates a valid choice' do
      choice = computer.computer_choice
      expect(%w[rock paper scissors].find { |item| item == choice }).to_not be_nil
    end
  end
end
