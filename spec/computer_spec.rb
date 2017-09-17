require 'computer'

RSpec.describe Computer do
  let(:computer) { described_class.new }

  describe '#computer_choice' do
    it 'choses rock paper or scissors' do
      expect(['rock', 'paper', 'scissors']).to include computer.computer_choice
    end
  end
end
