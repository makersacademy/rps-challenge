require 'computer'
describe Computer do
  subject(:computer) {Computer.new}

  context 'score' do
    it 'has a score' do
      expect(computer).to respond_to(:score)
    end
    it 'has a score 0 by default' do
      expect(computer.score).to eq 0
    end
  end



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
