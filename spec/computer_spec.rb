require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#computer_choice' do
    it "can choose a random selection" do
      expect(Computer::CHOICES).to include(computer.computer_choice)
    end
  end

end
