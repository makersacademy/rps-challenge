require 'computer'

RSpec.describe Computer do

  describe '#choice' do
    it 'returns choice' do
      computer = Computer.new
      expect(computer.list).to receive(:sample).and_return("paper")
      computer.random_selector
      expect(computer.choice).to eq("paper")
    end
  end
  
  describe '#random_selector'
    it 'selects rock, paper, or scissors randomly' do
      computer = Computer.new
      expect(computer.list).to receive(:sample).and_return("paper")
      expect(computer.random_selector).to eq ("paper")
    end
  end
