require 'computer'
describe Computer do
  subject(:computer) {Computer.new}

  context '#computer_choice' do
    it 'computer can choose' do
      expect(computer).to receive(:computer_choice).and_return('scissor')
      computer.computer_choice
    end
  end

  context '#computer_answer' do
    it 'can return an answer' do
      computer_choice = 'scissor'
      computer.computer_answer(computer_choice)
      expect(computer.computers_answer).to eq computer_choice
    end
  end
end
