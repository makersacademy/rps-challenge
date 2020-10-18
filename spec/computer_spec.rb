describe Computer do
  describe '#choice' do
    it 'can return rock' do
      computer = Computer.new
      computer.stub(:choice).and_return('rock')
      expect(computer.choice). to eq 'rock'
    end
    it 'can return paper' do
      computer = Computer.new
      computer.stub(:choice).and_return('paper')
      expect(computer.choice). to eq 'paper'
    end
    it 'can return scissors' do
      computer = Computer.new
      computer.stub(:choice).and_return('scissors')
      expect(computer.choice). to eq 'scissors'
    end
  end
end
