require 'computer'

describe Computer do
  
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'chooses Rock, Paper or Scissors at random' do
      choices = Computer::CHOICES.map { |choice| choice.to_s.capitalize }
      expect(choices).to include computer.move
    end
  end
end
