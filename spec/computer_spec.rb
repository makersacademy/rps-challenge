require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#random' do
    it 'returns a valid selection' do
      computer.random
      expect(%w[rock paper scissors].find { |item| item == computer.computer_choice }).to_not be_nil
    end
  end

  describe '#computer_choice' do
    it 'displays the computer choice' do
      choice = computer.random
      expect(computer.computer_choice).to eq choice
    end
  end
end
